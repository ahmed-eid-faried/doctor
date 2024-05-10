import 'package:doctor/core/core/imports/export_path.dart';
import 'package:latlong2/latlong.dart';
import 'package:routing_client_dart/routing_client_dart.dart';
import 'package:doctor/core/function/polylinemap/polyline_algorithm.dart';

class RoutingMap {
  static List<RoadLeg> roadDetailInfo = [];
  static double duration = 0;
  static double distance = 0;
  static List<RoadInstruction> instructions = [];

  routing(List<LatLng> routeCoordinates, LatLng position, LatLng latLng) async {
    debugPrint(
        "==================================================================");
    List<LngLat> waypoints = [
      LngLat(lng: position.longitude, lat: position.latitude),
      LngLat(lng: latLng.longitude, lat: latLng.latitude),
    ];
    final manager = OSRMManager();
    final road = await manager.getRoad(
      roadType: RoadType.car,
      alternative: false,
      steps: true,
      overview: Overview.full,
      waypoints: waypoints,
      geometries: Geometries.polyline,
      language: Languages.en,
    );

    routeCoordinates
        .addAll(decodePolyline(road.polylineEncoded!).unpackPolyline());
    final List<RoadInstruction> kinstructions =
        await manager.buildInstructions(road);
    roadDetailInfo = road.details.roadLegs;
    duration = road.duration;
    distance = road.distance;
    instructions = kinstructions;
    for (int index = 0; index < road.details.roadLegs.length; index++) {
      debugPrint(
          "details:- distance$index=> ${road.details.roadLegs[index].distance}, duration$index=> ${road.details.roadLegs[index].duration}, ");
    }
    debugPrint("duration:- ${road.duration}");
    debugPrint("distance:- ${road.distance}");
    debugPrint("polylineEncoded:- ${road.polylineEncoded}");
    debugPrint("routeCoordinates:- $routeCoordinates");
    debugPrint("instructions:- $instructions");
    debugPrint(
        "==================================================================");
  }
}

// final Road road2 = await manager.getTrip(
//   waypoints: waypoints,
//   roundTrip: false,
//   source: SourceGeoPointOption.first,
//   destination: DestinationGeoPointOption.last,
//   geometries: Geometries.polyline,
//   steps: true,
//   language: Languages.en,
// );
// debugPrint("========================================================");
// debugPrint("details:- ${road2.details}");
// debugPrint("duration:- ${road2.duration}");
// debugPrint("distance:- ${road2.distance}");
// debugPrint("polylineEncoded:- ${road2.polylineEncoded}");
// debugPrint("routeCoordinates:- $routeCoordinates");
// debugPrint("road2:- $road2");
// ///////////////////////////////////////////////////////////
