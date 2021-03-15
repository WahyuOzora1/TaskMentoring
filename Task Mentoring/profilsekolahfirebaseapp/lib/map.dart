import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapscreen extends StatefulWidget {
  @override
  _MapscreenState createState() => _MapscreenState();
}

class _MapscreenState extends State<Mapscreen> {
  final LatLng monas = LatLng(-6.175392999999987, 106.82702099999997);
  final LatLng smada = LatLng(-6.804664, 110.8226568);
  final LatLng colosseum = LatLng(-6.9547592, 107.591209);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maap"),
      ),
      body: ListView(
        children: <Widget>[
          MyMap(
            monas: monas,
            title: 'Monas',
          ),
          MyMap(
            monas: smada,
            title: 'Smada',
          ),
          MyMap(
            monas: colosseum,
            title: 'Colosseum',
          )
        ],
      ),
    );
  }
}

class MyMap extends StatelessWidget {
  const MyMap({
    //di ekstrak
    Key key,
    @required this.monas,
    this.title,
  }) : super(key: key);

  final LatLng monas;
  final String title; //supaya tampilannya dinamis

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 300,
                child: GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: monas, zoom: 11),
                  markers: <Marker>[
                    Marker(
                        markerId: MarkerId(title),
                        position: monas,
                        infoWindow: InfoWindow(title: title))
                  ].toSet(),
                  gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                    Factory<OneSequenceGestureRecognizer>(
                        () => ScaleGestureRecognizer())
                  ].toSet(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
