import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:profilsekolahfirebaseapp/detailProfil.dart';
import 'package:profilsekolahfirebaseapp/login_page.dart';
import 'models/sekolah_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeScreen extends StatefulWidget {
  final FirebaseUser user;
  final GoogleSignIn googleSignIn;
  final School school;

  HomeScreen({this.user, this.googleSignIn, this.school});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  List<School> _schoolList = List();
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  DatabaseReference _schoolRef;

//tipe textediting controller agar dibawah nanti bisa di deklarasikan dengan nama baru
  TextEditingController _schoolNameController =
      TextEditingController(); //ketika ingin menambahkan schoolnya
  TextEditingController _alamatController = TextEditingController();
  TextEditingController _tujuanController = TextEditingController();
  TextEditingController _visiMisiController = TextEditingController();
  TextEditingController _latitudeController = TextEditingController();
  TextEditingController _longitudeController = TextEditingController();

  StreamSubscription<Event> _onSchoolAddSubscribtion; //subsscribe
  StreamSubscription<Event> _onSchoolChangeSubscribtion;

  @override
  void initState() {
    //reference alamat dokumen kita
    _schoolRef = _database.reference().child("schools"); //nama datbase
    _onSchoolAddSubscribtion =
        _schoolRef.onChildAdded.listen(_onAddSchool); //buat method _onNewSchool
    _onSchoolAddSubscribtion =
        _schoolRef.onChildChanged.listen(_onUpdateSchool);
    super.initState();
  }

  @override
  void dispose() {
    //berhenti melakukan subscribtioon
    _onSchoolAddSubscribtion.cancel();
    _onSchoolChangeSubscribtion.cancel();
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 189,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://calonmahasiswa.com/wp-content/uploads/pkn-stan-bintaro.jpg'),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 10),
                  ],
                  color: Colors.yellow),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "SELAMAT DATANG",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          widget.user.displayName,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  color: Colors.white,
                                  icon: Icon(
                                    Icons.logout,
                                  ),
                                  onPressed: () {
                                    signOut();
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => LoginPage()),
                                        (route) => false);
                                  },
                                ),
                                InkWell(
                                  onTap: () {
                                    signOut();
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => LoginPage()),
                                        (route) => false);
                                  },
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: _showSchoolList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Swipe to delete !!!",
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialogSchoolFormAdd();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue[300],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 2.0,
        color: Colors.blue[300],
        shape: CircularNotchedRectangle(),
        child: ButtonBar(
          children: <Widget>[
            Container(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

//menampilkan
  Widget _showSchoolList() {
    if (_schoolList.length > 0) {
      return ListView.builder(
          itemCount: _schoolList.length,
          itemBuilder: (context, index) {
            School school = _schoolList[index];
            return Dismissible(
              key: Key(school.key),
              background: Container(
                color: Colors.blue,
                child: Center(
                    child: Text(
                  "Ini dihapus yaa",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              onDismissed: (direction) async {
                _deleteSchool(school.key, index);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => DetailProfil(
                              schoolList: _schoolList[index],
                              // index: index,
                            )));
                  },
                  child: ListTile(
                    title: Text(
                      school.schoolName == null ? '' : school.schoolName,
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: Text(school.alamat == null ? '' : school.alamat,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.left),
                    // subtitle: Text(
                    //   school.tujuan,
                    //   style: TextStyle(fontSize: 12, color: Colors.black12),
                    // ),
                    // trailing: IconButton(
                    //     icon: (school.completed)
                    //         ? Icon(
                    //             Icons.done_all_outlined,
                    //             color: Colors.green,
                    //             size: 20,
                    //           )
                    //         : Icon(
                    //             Icons.done,
                    //             color: Colors.grey,
                    //             size: 20,
                    //           ),
                    //     onPressed: () {
                    //       _updateSchool(school);
                    //     }),
                    trailing: school.alamat == null
                        ? Container(
                            color: Colors.blueAccent,
                            height: 10,
                            width: 10,
                          )
                        : IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              _showDialogSchoolFormEdit(_schoolList[index]);
                            }),
                  ),
                ),
              ),
            );
          });
    } else {
      return Center(
        child: Text("No School addded"),
      );
    }
  }

  _showDialogSchoolFormEdit(School schoolList) {
    _schoolNameController = TextEditingController(text: schoolList.schoolName);
    _alamatController = TextEditingController(text: schoolList.alamat);

    _tujuanController = TextEditingController(text: schoolList.tujuan);
    _visiMisiController = TextEditingController(text: schoolList.visiMisi);
    _latitudeController =
        TextEditingController(text: schoolList.latitude.toString());
    _longitudeController =
        TextEditingController(text: schoolList.longitude.toString());

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextField(
                            controller: _schoolNameController,
                            autofocus: true,
                            decoration:
                                InputDecoration(labelText: 'Nama Sekolah'),
                          ),
                          TextField(
                            controller: _alamatController,
                            autofocus: true,
                            decoration:
                                InputDecoration(labelText: 'Alamat Sekolah'),
                          ),
                          TextField(
                            maxLines: 5,
                            controller: _tujuanController,
                            autofocus: true,
                            decoration: InputDecoration(labelText: 'tujuan'),
                          ),
                          TextField(
                            controller: _visiMisiController,
                            maxLines: 5,
                            autofocus: true,
                            decoration:
                                InputDecoration(labelText: 'Visi dan Misi'),
                          ),
                          TextField(
                            controller: _latitudeController,
                            autofocus: true,
                            decoration: InputDecoration(labelText: 'Latitude'),
                          ),
                          TextField(
                            controller: _longitudeController,
                            autofocus: true,
                            decoration: InputDecoration(labelText: 'Longitude'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              MaterialButton(
                onPressed: () async {
                  // setState(() {
                  //   widget?.school?.latitude = _latitudeController.text;
                  //   widget?.school?.schoolName = _schoolNameController.text;
                  //   widget?.school?.longitude = _longitudeController.text;
                  //   widget?.school?.tujuan = _tujuanController.text;
                  // });
                  // School school;
                  await _updateSchool(
                    schoolList,
                    _schoolNameController.text,
                    _alamatController.text,
                    _tujuanController.text,
                    _visiMisiController.text,
                    _latitudeController.text,
                    _longitudeController.text,
                  );

                  Navigator.pop(context);
                },
                child: Text("Update"),
              ),
            ],
          );
        });
  }

  void _showDialogSchoolFormAdd() {
    _schoolNameController.clear();
    _alamatController.clear();
    _tujuanController.clear();
    _visiMisiController.clear();
    _latitudeController.clear();
    _longitudeController.clear();

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _schoolNameController,
                            autofocus: true,
                            decoration:
                                InputDecoration(labelText: 'Nama Sekolah'),
                          ),
                          TextFormField(
                            controller: _alamatController,
                            autofocus: true,
                            decoration:
                                InputDecoration(labelText: 'Alamat Sekolah'),
                          ),
                          TextFormField(
                            maxLines: 5,
                            controller: _tujuanController,
                            autofocus: true,
                            decoration: InputDecoration(labelText: 'tujuan'),
                          ),
                          TextFormField(
                            maxLines: 5,
                            controller: _visiMisiController,
                            autofocus: true,
                            decoration:
                                InputDecoration(labelText: 'Visi dan Misi '),
                          ),
                          TextFormField(
                            controller: _latitudeController,
                            autofocus: true,
                            decoration: InputDecoration(labelText: 'Latitude'),
                          ),
                          TextFormField(
                            controller: _longitudeController,
                            autofocus: true,
                            decoration: InputDecoration(labelText: 'Longitude'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              MaterialButton(
                onPressed: () {
                  _addSchool(
                      _schoolNameController.text,
                      _alamatController.text,
                      _tujuanController.text,
                      _visiMisiController.text,
                      double.parse(_latitudeController.text),
                      double.parse(_longitudeController.text));
                  Navigator.pop(context);
                },
                child: Text("Save"),
              ),
            ],
          );
        });
  }

  void _onAddSchool(Event event) {
    setState(() {
      _schoolList.add(School.fromSnapshot(event.snapshot));
    });
  }

  Future<void> _addSchool(String schoolName, String alamat, String tujuan,
      String visiMisi, double latitude, double longitude) async {
//cek kalau bener input sebuah text
    if (schoolName.length > 0 &&
        alamat.length > 0 &&
        tujuan.length > 0 &&
        visiMisi.length > 0) {
      School school = School(
        schoolName,
        alamat,
        tujuan,
        visiMisi,
        latitude,
        longitude, // completed: true
      );

      await _schoolRef.push().set(school.toJson());
    }
  }

// kalau ada perubahan baru di firebase dia akan melanjutkan method yang ini
  void _onUpdateSchool(Event event) {
    var oldEntry = _schoolList.singleWhere((school) {
      //school sebagai key nya
      return school.key == event.snapshot.key;
    });

    setState(() {
      _schoolList[_schoolList.indexOf(oldEntry)] =
          School.fromSnapshot(event.snapshot);
    });
  }

  _updateSchool(
    School school,
    String nama,
    String alamat,
    String tujuan,
    String visiMisi,
    String lat,
    String lot,
  ) {
    school.schoolName = nama;
    school.alamat = alamat;
    school.tujuan = tujuan;
    school.visiMisi = visiMisi;
    school.latitude = double.parse(lat);
    school.longitude = double.parse(lot);
    if (school != null) {
      setState(() {
        _database
            .reference()
            .child("schools")
            .child(school.key)
            .set(school.toJson());
      });
    }
  }

  Future<void> _deleteSchool(String key, int index) async {
    await _schoolRef.child(key).remove();
    setState(() {
      _schoolList.removeAt(index);
    });
  }
}
