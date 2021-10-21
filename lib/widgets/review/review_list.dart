import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/review/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/people.jpg", "Jhon Agudelo", "1 review, 5 photos", 2.5, "There is an amazing place in Sri Lanka"),
        Review("assets/images/people.jpg", "Valentina R", "1 review, 5 photos", 3.5, "There is an amazing place in Sri Lanka"),
        Review("assets/images/people.jpg", "Breyner T", "1 review, 5 photos", 5, "There is an amazing place in Sri Lanka"),
      ],
    );
  }
}
