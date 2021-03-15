import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:profilsekolahfirebaseapp/models/sekolah_model.dart';

class DetailProfil extends StatefulWidget {
  School schoolList;
  // final int index;
  DetailProfil({this.schoolList});
  @override
  _DetailProfilState createState() => _DetailProfilState();
}

class _DetailProfilState extends State<DetailProfil> {
  LatLng listMap;

  double lat = 0;
  double long = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lat = widget.schoolList.latitude;
    long = widget.schoolList.longitude;
    listMap = LatLng(lat, long);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          MyMap(
            location: listMap,
            title: widget.schoolList.schoolName,
            alamat: widget.schoolList.alamat,
            tujuan: widget.schoolList.tujuan,
            visiMisi: widget.schoolList.visiMisi,
            latitude: widget.schoolList.latitude,
            longitude: widget.schoolList.longitude,
          ),
        ],
      ),
    );
  }
}

class MyMap extends StatelessWidget {
  const MyMap(
      {
      //di ekstrak
      Key key,
      @required this.location,
      this.title,
      this.alamat,
      this.tujuan,
      this.visiMisi,
      this.latitude,
      this.longitude})
      : super(key: key);

  //INi harus urut

  final String title; //supaya tampilannya dinamis
  final String alamat;
  final String tujuan;
  final String visiMisi;
  final double latitude;
  final double longitude;
  final LatLng location;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on_outlined),
              Text(
                title,
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Funny Sports'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            alamat,
            style: TextStyle(fontSize: 13, fontFamily: 'Funny Sports'),
            textAlign: TextAlign.center,
          ),
        ),
        SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(target: location, zoom: 11),
              markers: <Marker>[
                Marker(
                    markerId: MarkerId(title),
                    position: location,
                    infoWindow: InfoWindow(title: title))
              ].toSet(),
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                Factory<OneSequenceGestureRecognizer>(
                    () => ScaleGestureRecognizer())
              ].toSet(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: SingleChildScrollView(
            child: Card(
              shape: RoundedRectangleBorder(),
              elevation: 0,
              shadowColor: Colors.black,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12, width: 5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Tujuan',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Text(
                          tujuan,
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12, width: 5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Visi dan Misi',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Text(
                          visiMisi,
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
