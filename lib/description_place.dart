import 'package:flutter/material.dart';
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  // Constructor
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    const marginTitle = 320.0;

    final starHalf = Container( // medium star
      margin: const EdgeInsets.only(
        top: marginTitle + 3,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container( // empty star
      margin: const EdgeInsets.only(
        top: marginTitle + 3,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: marginTitle + 3,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
        ),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: marginTitle,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          // stars
          children: <Widget>[
            star,
            star,
            star,
            star,
            starBorder,
          ],
        ),
      ],
    );

    return Column(
      children: <Widget>[
        titleStars,
        description,
      ],
    );
    // throw UnimplementedError();
  }
}
