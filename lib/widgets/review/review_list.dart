import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/review/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Review("assets/images/people.jpg", "Jhon Agudelo", "1 review, 5 photos", 4,
            "There is an amazing place in Sri Lanka")
      ],
    );
  }
}
