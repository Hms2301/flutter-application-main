import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // Set the initial position of the map to be somewhere in New York City
  final LatLng _initialPosition = LatLng(21.288095, -157.828798);
  final LatLng _hanamaBay = LatLng(21.272259, -157.694864);
  final LatLng _kokoHead = LatLng(21.285376, -157.683186);
  final LatLng _petCo = LatLng(21.275378, -157.701542);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        // Set the initial camera position to be the initial position
        initialCameraPosition: CameraPosition(
          target: _initialPosition,
          zoom: 14.0,
        ),
        markers: Set.of([
          Marker(
            markerId: MarkerId("current_position"),
            position: _initialPosition,
            // Use the custom marker icon
            icon: BitmapDescriptor.defaultMarker,

            infoWindow: InfoWindow(
              // Add a title to the info window
              title: "Ala Wai Park Trash Cleanup Event",
              // You can also add some extra information in the snippet
              snippet: "Date: January 12th, 2023 | Time: 12:00 p.m",
            ),
          ),
          Marker(
            markerId: MarkerId("hanama_bay"),
            position: _hanamaBay,
            // Use the custom marker icon
            icon: BitmapDescriptor.defaultMarker,

            infoWindow: InfoWindow(
              // Add a title to the info window
              title: "Hanama Bay Beach Cleanup",
              // You can also add some extra information in the snippet
              snippet: "Date: January 30th, 2023 | Time: 3:00 p.m",
            ),
          ),
          Marker(
            markerId: MarkerId("koko_head"),
            position: _kokoHead,
            // Use the custom marker icon
            icon: BitmapDescriptor.defaultMarker,

            infoWindow: InfoWindow(
              // Add a title to the info window
              title: "Koko Head Hike for Humanity",
              // You can also add some extra information in the snippet
              snippet: "Date: February 1st, 2023 | Time: 8:00 a.m",
            ),
          ),
          Marker(
            markerId: MarkerId("pet_co"),
            position: _petCo,
            // Use the custom marker icon
            icon: BitmapDescriptor.defaultMarker,

            infoWindow: InfoWindow(
              // Add a title to the info window
              title: "Petco Pet Walk",
              // You can also add some extra information in the snippet
              snippet: "Date: March 23rd, 2023 | Time: 1:00 p.m",
            ),
          ),
        ]),
      ),
    );
  }
}
