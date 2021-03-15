import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchListView(),
    );
  }
}

class SearchListView extends StatefulWidget {
  @override
  _SearchListViewState createState() => _SearchListViewState();
}

class _SearchListViewState extends State<SearchListView> {
  var listDisplay = [], listBackup = [];
  TextEditingController ec = TextEditingController();
  Future<List> ambilData() async {
    final dataList =
        await http.get("http://192.168.10.37/kamusku/ambildata.php");

    return json.decode(dataList.body);
  }

  pembungkusData() {
    ambilData().then((data) {
      listDisplay.addAll(data);
      listBackup.addAll(data);
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    pembungkusData();
    ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Jodoh Apps')),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10, bottom: 10.0, top: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.0),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Cari nama jodohmu :",
                      contentPadding: EdgeInsets.only(left: 20),
                      border: InputBorder.none,
                    ),
                    controller: ec,
                    onChanged: (value) {
                      setState(() {
                        listDisplay = listDisplay
                            .where((e) => "${e['nama']}"
                                .toLowerCase()
                                .contains(ec.text.toLowerCase()))
                            .toList();
                        if (value.isEmpty) {
                          listDisplay = listBackup;
                        }
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: FutureBuilder<List>(
          future: ambilData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? ItemList(list: listDisplay) //yang ditampilin dari list
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //ambil sendiri dari database tapi tidak ditampung di variabel
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Container(
          padding: EdgeInsets.all(3),
          child: Card(
            elevation: 5.0,
            child: ListTile(
              title: Text(
                "Nama : ${list[i]['nama']}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text("Deskripsi :${list[i]['keterangan']}")
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
