import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  double stars;
  EdgeInsets margin;
  double fontSize;

  Rating(this.stars, this.margin, this.fontSize);

  Widget getStar(stars, index) {
    dynamic icon;
    if (stars > index) {
      icon = Icon(Icons.star, color: const Color(0xFFf2C611), size: fontSize);
    } else {
      if (stars >= index - 0.5) {
        icon = Icon(Icons.star_half,
            color: const Color(0xFFf2C611), size: fontSize);
      } else {
        icon = Icon(Icons.star_border,
            color: const Color(0xFFf2C611), size: fontSize);
      }
    }

    final star = Container(
      margin: margin,
      child: icon,
    );

    return Container(
      margin: const EdgeInsets.only(
        right: 1.0,
      ),
      child: star,
    );
  }

  Widget getRanking(stars) {
    List<Widget> listStars = List.generate(5, (index) => getStar(stars, index));
    return Row(
      children: listStars,
    );
  }

  @override
  Widget build(BuildContext context) {
    return getRanking(stars);
  }
}
