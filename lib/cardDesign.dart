import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'dataset.dart';

class CardDesign extends StatelessWidget {
  final CardData card;
  CardDesign({required this.card, required String title});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: card.color,
            boxShadow: [
              BoxShadow(
                  color: card.color, offset: Offset(0, 0), blurRadius: 5)
            ],
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width:300,
        height:200,
        child: Stack(
          children: [
            Positioned(
                bottom: -50,
                child: Blob.random(size: 300,styles: BlobStyles(color: card.color.withGreen(1).withOpacity(0.2)),)
            ),
            Positioned(
                top: -50,
                child: Blob.random(size: 250,styles: BlobStyles(color: card.color.withGreen(1).withOpacity(0.2)),)
            ),
            Positioned(
                top: -50,
                right: -50,
                child: Blob.random(size: 300,styles: BlobStyles(color: card.color.withGreen(1).withOpacity(0.2)),)
            ),
            Positioned(
              top: 30,
              left: 30,
              right: 30,

              child: Container(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nifty50",
                          style: TextStyle(color: Colors.white54),
                        ),
                        // Text(
                        //   card.date,
                        //   style: TextStyle(
                        //       color: Colors.white, fontWeight: FontWeight.w700),
                        // )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$" + card.balance,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 30,
              right: 30,
              top: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "-" + card.number,
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
                  // Image(
                  //   image: AssetImage(card.image),
                  //   width: 50,
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
