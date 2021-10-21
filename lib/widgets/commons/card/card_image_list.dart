import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/commons/card/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/beach.jpeg"),
          CardImage("assets/images/beach_palm.jpeg"),
          CardImage("assets/images/mountain.jpeg"),
          CardImage("assets/images/mountain_stars.jpeg"),
          CardImage("assets/images/river.jpeg"),
          CardImage("assets/images/sunset.jpeg"),
        ],
      ),
    );
  }
  
}