import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail_image.dart';

void main() => runApp(MyApp());

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/1.jpg',
    // price: '\$25.00',
    // photographer: 'Wahyu Ozora',
    // title: 'DOI',
    // details:
    //     'Kamu segalanya, tak terikat oleh waktu, biar kan bumi menolak ku tetap cinta kamu'
  ),
  ImageDetails(
    imagePath: 'images/2.jpg',
    // price: '\$25.00',
    // photographer: 'Wahyu Ozora',
    // title: 'DOI',
    // details:
    //     'Kamu segalanya, tak terikat oleh waktu, biar kan bumi menolak ku tetap cinta kamu'
  ),
  ImageDetails(
    imagePath: 'images/3.jpg',
    // price: '\$25.00',
    // photographer: 'Wahyu Ozora',
    // title: 'DOI',
    // details:
    //     'Kamu segalanya, tak terikat oleh waktu, biar kan bumi menolak ku tetap cinta kamu'
  ),
  ImageDetails(
    imagePath: 'images/4.jpg',
  ),
  ImageDetails(
    imagePath: 'images/5.jpg',
  ),
  ImageDetails(
    imagePath: 'images/6.jpg',
  ),
  ImageDetails(
    imagePath: 'images/7.jpg',
  ),
  ImageDetails(
    imagePath: 'images/8.jpg',
  ),
  ImageDetails(
    imagePath: 'images/9.jpg',
  ),
  ImageDetails(
    imagePath: 'images/10.jpg',
  ),
  ImageDetails(
    imagePath: 'images/11.jpg',
  ),
  ImageDetails(
    imagePath: 'images/12.jpg',
  ),
  ImageDetails(
    imagePath: 'images/13.jpg',
  ),
  ImageDetails(
    imagePath: 'images/14.jpg',
  ),
  ImageDetails(
    imagePath: 'images/15.jpg',
  ),
  ImageDetails(
    imagePath: 'images/9.jpg',
  ),
  ImageDetails(
    imagePath: 'images/10.jpg',
  ),
  ImageDetails(
    imagePath: 'images/11.jpg',
  ),
  ImageDetails(
    imagePath: 'images/12.jpg',
  ),
  ImageDetails(
    imagePath: 'images/9.jpg',
  ),
  ImageDetails(
    imagePath: 'images/10.jpg',
  ),
  ImageDetails(
    imagePath: 'images/11.jpg',
  ),
  ImageDetails(
    imagePath: 'images/12.jpg',
  ),
  ImageDetails(
    imagePath: 'images/12.jpg',
  ),
  ImageDetails(
    imagePath: 'images/13.jpg',
  ),
  ImageDetails(
    imagePath: 'images/14.jpg',
  ),
  ImageDetails(
    imagePath: 'images/15.jpg',
  ),
  ImageDetails(
    imagePath: 'images/9.jpg',
  ),
  ImageDetails(
    imagePath: 'images/10.jpg',
  ),
  ImageDetails(
    imagePath: 'images/11.jpg',
  ),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              'Gallery Photo',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailImage(
                                    imagePath: _images[index].imagePath,
                                  )),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            )),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  // final String price;
  // final String photographer;
  // final String title;
  // final String details;

  ImageDetails(
      //
      {
    @required this.imagePath,
    // @required this.price,
    // @required this.details,
    // @required this.photographer,
    // @required this.title
  });
}
