import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final String imagePath;
  // final String title;
  // final String photographer;
  // final String price;
  // final String details;

  DetailImage({
    this.imagePath,
    // this.title,
    // this.photographer,
    // this.price,
    // this.details
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
