import 'dart:ui';

import 'package:dino_manager/ui/theme/typography/typography_entity.dart';

const String roboto = "Roboto";

final TextStyles textStyles = TextStyles(
  heading: Heading(
    h1: TextStyle(
      fontFamily: roboto,
      fontSize: 36,
      fontWeight: FontWeight.w500,
    ),
    h2: TextStyle(
      fontFamily: roboto,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    h3: TextStyle(
      fontFamily: roboto,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    h4: TextStyle(
      fontFamily: roboto,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  ),
  body: Body(
    b1: TextStyle(
      fontFamily: roboto,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    b2: TextStyle(
      fontFamily: roboto,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    b3: TextStyle(
      fontFamily: roboto,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  ),
);
