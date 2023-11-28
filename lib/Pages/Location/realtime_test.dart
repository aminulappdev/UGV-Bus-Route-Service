import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Realtime_test extends StatefulWidget {
  const Realtime_test({super.key});

  @override
  State<Realtime_test> createState() => _Realtime_testState();
}

class _Realtime_testState extends State<Realtime_test> {
  final ref = FirebaseDatabase.instance.ref('GPS');
  late GoogleMapController _controller;
  bool _added = false;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("UGV Bus Current location"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: StreamBuilder(
                    stream: ref.onValue,
                    builder: ((context, AsyncSnapshot<DatabaseEvent> snapshot) {
                      if (!snapshot.hasData) {
                        return Center(child: Text("Loading"),);
                      } else {
                        Map<dynamic, dynamic> map =
                            snapshot.data!.snapshot.value as dynamic;
                        List<double> doubleList = [];

                        map.values.forEach((value) {
                          try {
                            double convertedValue =
                                double.parse(value.toString());
                            doubleList.add(convertedValue);
                          } catch (e) {
                            // Handle any conversion errors here
                            print('Error converting value: $value');
                          }
                        });
                        return ListView.builder(
                            itemCount: 1,
                            itemBuilder: ((context, index) {
                              var _latitude = doubleList[0];
                              var _longitude = doubleList[1];
                              print(
                                  "My latitude : $_latitude and My Logituted : $_longitude");
                              return Container(
                                height: _height,
                                width: _width,
                                color: Colors.white,
                                child: GoogleMap(
                                  // mapType: MapType.normal,
                                  zoomGesturesEnabled: true,
                                  // tiltGesturesEnabled: false,
                                  markers: {
                                    Marker(
                                        position: LatLng(_latitude, _longitude),
                                        markerId: MarkerId('id'),
                                        icon: BitmapDescriptor
                                            .defaultMarkerWithHue(
                                                BitmapDescriptor.hueMagenta)),
                                  },
                                  initialCameraPosition: CameraPosition(
                                      target: LatLng(_latitude, _longitude),
                                      zoom: 14.47),
                                  onMapCreated:
                                      (GoogleMapController controller) async {
                                    setState(() {
                                      _controller = controller;
                                      _added = true;
                                    });
                                  },
                                ),
                              );
                            }));
                      }
                    }))),
          ],
        ),
      ),
    );
  }
}
