import 'package:firebase_database/firebase_database.dart';

class School {
  //untuk menyimpan data sekolah
  String key;
  String schoolName;
  String alamat;
  String tujuan;
  String visiMisi;
  double latitude;
  double longitude;

  School(this.schoolName, this.alamat, this.tujuan, this.visiMisi,
      this.latitude, this.longitude);

//snapshot, data yang di kirim ke firebase
  School.fromSnapshot(DataSnapshot snapshot) //mengubah format firebase ke Model
      : key = snapshot.key,
        schoolName = snapshot.value['schoolName'],
        alamat = snapshot.value['alamat'],
        tujuan = snapshot.value['tujuan'],
        visiMisi = snapshot.value['visiMisi'],
        latitude = snapshot.value['latitude'],
        longitude = snapshot.value['longitude'];

  Map<String, dynamic> toJson() => {
        //mengubah ke format json
        //menyimpan ke firebase harus dalam bentuk json

        // "schoolId": schoolId,
        "key": key,
        "schoolName": schoolName,
        "alamat": alamat,
        "tujuan": tujuan,
        "visiMisi": visiMisi,
        // "completed": completed,
        "latitude": latitude,
        "longitude": longitude,
      };
}
