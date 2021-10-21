import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/commons/card/card_image_list.dart';
import 'package:platzi_trips_app/widgets/commons/gradient/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList(),
      ],
    );
  }
}
