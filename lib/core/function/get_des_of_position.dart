import 'package:doctor/core/class/status_request.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class LocationMap {
  Future<Placemark> getDesOfPosition(LatLng latlng) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(latlng.latitude, latlng.longitude);
    return placemarks[0];
  }

  Future<Placemark> getDesOfCurrentPosition() async {
    Position xy = await Geolocator.getCurrentPosition();
    List<Placemark> placemarks =
        await placemarkFromCoordinates(xy.latitude, xy.longitude);
    return placemarks[0];
  }

  getLatLngFromDescription(
      {required LatLng latLng,
      MapController? mapController,
      required String des}) async {
    try {
      List<Location> locations = await locationFromAddress(des);
      if (locations.isNotEmpty) {
        Location location = locations.first;
        latLng = LatLng(location.latitude, location.longitude);
        mapController!.move(latLng, 14);
      }
    } catch (e) {
      print("Geocoding error: $e");
    }
  }

  Future<bool> check(StatusRequest? statusRequest) async {
    bool kisLocationServiceEnabled =
        await Geolocator.isLocationServiceEnabled();

    if (kisLocationServiceEnabled == false) {
      if (statusRequest != null) {
        statusRequest = StatusRequest.offlinefailure;
      }
      Get.defaultDialog(
        title: 'Check your Location services',
        middleText: "Location services are disabled.",
      );
    }
    kcheckPermissionfun(statusRequest);
    return kisLocationServiceEnabled;
  }

  Future<LocationPermission> kcheckPermissionfun(
      StatusRequest? statusRequest) async {
    LocationPermission kcheckPermission = await Geolocator.checkPermission();
    print(kcheckPermission);
    if (kcheckPermission == LocationPermission.denied ||
        kcheckPermission == LocationPermission.deniedForever) {
      if (statusRequest != null) {
        statusRequest = StatusRequest.offlinefailure;
      }
      await Geolocator.requestPermission();
    }
    return kcheckPermission;
  }

  Future<Position> getposition() async {
    Position position = await Geolocator.getCurrentPosition();
    print(position);
    return position;
  }

  Future<LatLng> getpositionLatLng() async {
    Position xy = await Geolocator.getCurrentPosition();
    LatLng latLng = LatLng(xy.latitude, xy.longitude);
    return latLng;
  }

  Future<double> measureofdistance(double px, double py) async {
    Position xy = await Geolocator.getCurrentPosition();
    var kdistanceBetween =
        Geolocator.distanceBetween(xy.latitude, xy.longitude, px, py) / 1000;
    Get.defaultDialog(
        title: 'distance between two',
        middleText:
            "measure of distance between your location and point ($px,$py) by kilometer is $kdistanceBetween");
    return kdistanceBetween;
  }
}
