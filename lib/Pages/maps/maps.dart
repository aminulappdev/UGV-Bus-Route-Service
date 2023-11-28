import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Google_maps extends StatefulWidget {
  const Google_maps({super.key});

  @override
  State<Google_maps> createState() => _Google_mapsState();
}

class _Google_mapsState extends State<Google_maps> {
  Completer<GoogleMapController> _contrler = Completer.sync();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(22.705042115970848, 90.35214819590189),
    zoom: 11,
  );
  List<Marker> _marker = [];
  List<Marker> _list = const [
    Marker(
        infoWindow: InfoWindow(title: 'University Of Global Village'),
        markerId: MarkerId('1'),
        position: LatLng(22.705042115970848, 90.35214819590189)),
    Marker(
        infoWindow: InfoWindow(title: 'Gournadi'),
        markerId: MarkerId('2'),
        position: LatLng(22.976590150837232, 90.22127517537183)),
    Marker(
        infoWindow: InfoWindow(title: 'Asukathi'),
        markerId: MarkerId('3'),
        position: LatLng(22.96886435100717, 90.22245918237054)),
    Marker(
        infoWindow: InfoWindow(title: 'Mahilara'),
        markerId: MarkerId('4'),
        position: LatLng(22.933551962111014, 90.23918568329837)),
    Marker(
        infoWindow: InfoWindow(title: 'Batajor'),
        markerId: MarkerId('5'),
        position: LatLng(22.90493954094056, 90.24889966900855)),
    Marker(
        infoWindow: InfoWindow(title: 'Ichladi'),
        markerId: MarkerId('6'),
        position: LatLng(22.833547945128423, 90.26308208663578)),
    Marker(
        infoWindow: InfoWindow(title: 'Rahmatpur'),
        markerId: MarkerId('7'),
        position: LatLng(22.79079759574354, 90.29999893178358)),
    Marker(
        infoWindow: InfoWindow(title: 'Notun Hat'),
        markerId: MarkerId('8'),
        position: LatLng(22.817850656262248, 90.27278076841623)),
    Marker(
        infoWindow: InfoWindow(title: 'Satmile'),
        markerId: MarkerId('9'),
        position: LatLng(22.777231923121835, 90.30543704622593)),
  ];
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // body: Container(),
        appBar: AppBar(
          title: Text("Maps"),
        ),
        body: GoogleMap(
            markers: Set<Marker>.of(_marker),
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _contrler.complete(controller);
            }),
      ),
    );
  }
}
