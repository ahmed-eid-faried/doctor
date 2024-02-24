// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'dart:convert';
import 'package:doctor/core/constant/color.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';

class LiveChatWidget extends StatefulWidget {
  const LiveChatWidget({super.key});

  @override
  _GetLiveChatWidgetState createState() => _GetLiveChatWidgetState();
}

class _GetLiveChatWidgetState extends State<LiveChatWidget> {
  // Local media
  final _localRenderer = RTCVideoRenderer();
  List _remoteRenderers = [];

  late WebSocketChannel _socket;
  late RTCPeerConnection _peerConnection;

  @override
  void initState() {
    super.initState();
    connect();
  }

  Future<void> connect() async {
    _peerConnection = await createPeerConnection({}, {});

    await _localRenderer.initialize();
    var localStream = await navigator.mediaDevices
        .getUserMedia({'audio': true, 'video': true});
    _localRenderer.srcObject = localStream;

    localStream.getTracks().forEach((track) async {
      await _peerConnection.addTrack(track, localStream);
    });

    _peerConnection.onIceCandidate = (candidate) {
      _socket.sink.add(const JsonEncoder().convert({
        "event": "candidate",
        "data": const JsonEncoder().convert({
          'sdpMLineIndex': candidate.sdpMLineIndex,
          'sdpMid': candidate.sdpMid,
          'candidate': candidate.candidate,
        })
      }));
    };

    _peerConnection.onTrack = (event) async {
      if (event.track.kind == 'video' && event.streams.isNotEmpty) {
        var renderer = RTCVideoRenderer();
        await renderer.initialize();
        renderer.srcObject = event.streams[0];

        setState(() {
          _remoteRenderers.add(renderer);
        });
      }
    };

    _peerConnection.onRemoveStream = (stream) {
      // ignore: prefer_typing_uninitialized_variables
      var rendererToRemove;
      var newRenderList = [];

      // Filter existing renderers for the stream that has been stopped
      for (var r in _remoteRenderers) {
        if (r.srcObject.id == stream.id) {
          rendererToRemove = r;
        } else {
          newRenderList.add(r);
        }
      }

      // Set the new renderer list
      setState(() {
        _remoteRenderers = newRenderList;
      });

      // Dispose the renderer we are done with
      if (rendererToRemove != null) {
        rendererToRemove.dispose();
      }
    };

    _socket = IOWebSocketChannel.connect('ws://localhost:8080/websocket');
    _socket.stream.listen((raw) async {
      Map<String, dynamic> msg = jsonDecode(raw);

      switch (msg['event']) {
        case 'candidate':
          Map<String, dynamic> parsed = jsonDecode(msg['data']);
          _peerConnection
              .addCandidate(RTCIceCandidate(parsed['candidate'], null, 0));
          return;
        case 'offer':
          Map<String, dynamic> offer = jsonDecode(msg['data']);

          // SetRemoteDescription and create answer
          await _peerConnection.setRemoteDescription(
              RTCSessionDescription(offer['sdp'], offer['type']));
          RTCSessionDescription answer = await _peerConnection.createAnswer({});
          await _peerConnection.setLocalDescription(answer);

          // Send answer over WebSocket
          _socket.sink.add(const JsonEncoder().convert({
            'event': 'answer',
            'data': const JsonEncoder()
                .convert({'type': answer.type, 'sdp': answer.sdp})
          }));
          return;
      }
    }, onDone: () {
      debugPrint('Closed by server!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sfu-ws'),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return Column(
          children: [
            // const Row(
            //   children: [Text('Local Video', style: TextStyle(fontSize: 50.0))],
            // ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: RTCVideoView(_localRenderer, mirror: true),
                ),
              ],
            ),
            // const Row(
            //   children: [
            //     Text('Remote Video', style: TextStyle(fontSize: 50.0))
            //   ],
            // ),
            Row(
              children: [
                ..._remoteRenderers.map((remoteRenderer) {
                  return Container(
                    // width: double.infinity,
                    // height: double.infinity,
                    width: 100,
                    height: 100,
                    color: AppColor.primaryColor,
                    child: RTCVideoView(remoteRenderer),
                  );
                }).toList(),
              ],
            ),
          ],
        );
      }),
    );
  }

  @override
  void dispose() {
    _localRenderer.dispose();
    _peerConnection.dispose();
    for (var renderer in _remoteRenderers) {
      renderer.dispose();
    }
    _socket.sink.close();
    super.dispose();
  }
}
