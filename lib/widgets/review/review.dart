import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/commons/rating.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/images/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review, 5 photos";
  double stars = 0;
  String comments = "There is an amazing place in Sri Lanka";

  Review(this.pathImage, this.name, this.details, this.stars, this.comments);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        comments,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            Text(
              details,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Color(0xFFa3a5a7),
              ),
            ),
            Rating(4.0, const EdgeInsets.only(left: 1.0), 18.0)
          ],
        ));

    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // como si se alineara a la izquierda
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}
