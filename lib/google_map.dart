  // import 'dart:async';
  // import 'package:flutter/material.dart';
  // import 'package:flutter_map/flutter_map.dart';
  // import 'package:geolocator/geolocator.dart';
  //
  // class GoogleMapPage extends StatefulWidget {
  //   const GoogleMapPage({Key? key}) : super(key: key);
  //
  //   @override
  //   State<GoogleMapPage> createState() => _GoogleMapPageState();
  // }
  //
  // class _GoogleMapPageState extends State<GoogleMapPage> {
  //   late GoogleMapController gmc;
  //   CameraPosition cameraPosition = CameraPosition(target: LatLng(26.820553, 30.802498), zoom: 12);
  //
  //   List<Marker> markers = [
  //     Marker(markerId: MarkerId("1"), position: LatLng(26.820553, 30.802498)),
  //   ];
  //
  //   StreamSubscription<Position>? positionStream;
  //   bool isLoading = false;
  //
  //   void initialStream() async {
  //     bool serviceEnabled;
  //     LocationPermission permission;
  //
  //     // Check if location services are enabled.
  //     serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //     if (!serviceEnabled) {
  //       print("Service Location Not Enabled");
  //       return;
  //     }
  //
  //     // Check location permissions.
  //     permission = await Geolocator.checkPermission();
  //     if (permission == LocationPermission.denied) {
  //       permission = await Geolocator.requestPermission();
  //       if (permission == LocationPermission.denied) {
  //         throw Exception('Location Permission is denied');
  //       }
  //     }
  //
  //     if (permission == LocationPermission.whileInUse) {
  //       setState(() {
  //         isLoading = true;
  //       });
  //
  //       positionStream = Geolocator.getPositionStream().listen(
  //             (Position position) {
  //           markers.add(Marker(markerId: MarkerId("1"), position: LatLng(position.latitude, position.longitude)));
  //           gmc.animateCamera(CameraUpdate.newLatLng(LatLng(position.latitude, position.longitude)));
  //           setState(() {
  //             isLoading = false;
  //           });
  //         },
  //         onError: (error) {
  //           setState(() {
  //             isLoading = false;
  //           });
  //           print('Error getting location: $error');
  //         },
  //         onDone: () {
  //           setState(() {
  //             isLoading = false;
  //           });
  //         },
  //       );
  //     }
  //   }
  //
  //   @override
  //   void initState() {
  //     initialStream();
  //     super.initState();
  //   }
  //
  //   @override
  //   void dispose() {
  //     positionStream?.cancel();
  //     super.dispose();
  //   }
  //
  //   @override
  //   Widget build(BuildContext context) {
  //     return Scaffold(
  //       appBar: AppBar(
  //         title: Text('Google Map'),
  //       ),
  //       body: Container(
  //         child: Column(
  //           children: [
  //             isLoading ? CircularProgressIndicator() : Container(),
  //             Expanded(
  //               child: FlutterMap(
  //                 options: MapOptions(
  //                   center: LatLng(26.820553, 30.802498),
  //                   zoom: 12.0,
  //                 ),
  //                 layers: [
  //                   TileLayerOptions(
  //                     urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
  //                     subdomains: ['a', 'b', 'c'],
  //                   ),
  //                   MarkerLayerOptions(
  //                     markers: markers,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  // }
