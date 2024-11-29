import 'package:flutter/material.dart';

class TextStyles {
  TextStyles({
    required this.heading,
    required this.body,
  });

  final Heading heading;
  final Body body;
}

class Heading {
  Heading({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
  });

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
}

class Body {
  Body({
    required this.b1,
    required this.b2,
    required this.b3,
  });

  final TextStyle b1;
  final TextStyle b2;
  final TextStyle b3;
}
