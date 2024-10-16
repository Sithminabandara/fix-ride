import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vehicle_app/widgets/navbar_roots.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationState();
}

class _LocationState extends State<LocationPage> {
  static const LatLng sourceLocation =
      LatLng(7.304423587641483, 80.6349983397973);
  static const LatLng destinationLocation =
      LatLng(7.275141691617648, 80.58105926698089);
  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            size: 28,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => NavbarRoots(),
              ),
            );
          },
        ),
        title: Text(
          'Location',
          style: TextStyle(
            fontSize: 24,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              size: 28, // Size of the notification icon
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
            onPressed: () {
              // Handle notification icon press
            },
          ),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition:
            const CameraPosition(target: sourceLocation, zoom: 13),
        markers: {
          const Marker(
            markerId: MarkerId("CurrentLocation"),
            icon: BitmapDescriptor.defaultMarker,
            position: sourceLocation,
          ),
          const Marker(
            markerId: MarkerId("SecondaryLocation"),
            icon: BitmapDescriptor.defaultMarker,
            position: destinationLocation,
          )
        },
      ),
    );
  }
}
