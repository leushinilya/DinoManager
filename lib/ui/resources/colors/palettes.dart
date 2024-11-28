import 'package:dino_manager/ui/resources/colors/color_primitives.dart';
import 'package:dino_manager/ui/resources/colors/palette.dart';

final _colorPrimitives = ColorPrimitives();

final lightColorsPalette = Palette(
  SurfaceColors(
    primary: _colorPrimitives.grey10,
    secondary: _colorPrimitives.white,
    disabled: _colorPrimitives.grey5,
  ),
  TextColors(
    primary: _colorPrimitives.grey80,
    secondary: _colorPrimitives.grey60,
    disabled: _colorPrimitives.grey20,
    success: _colorPrimitives.green,
    warning: _colorPrimitives.yellow,
    error: _colorPrimitives.red,
  ),
  IconColors(
    primary: _colorPrimitives.grey80,
    secondary: _colorPrimitives.grey60,
    disabled: _colorPrimitives.grey20,
    success: _colorPrimitives.green,
    warning: _colorPrimitives.yellow,
    error: _colorPrimitives.red,
  ),
);

final darkColorsPalette = Palette(
  SurfaceColors(
    primary: _colorPrimitives.grey80,
    secondary: _colorPrimitives.grey20,
    disabled: _colorPrimitives.grey5,
  ),
  TextColors(
    primary: _colorPrimitives.white,
    secondary: _colorPrimitives.grey5,
    disabled: _colorPrimitives.grey10,
    success: _colorPrimitives.green,
    warning: _colorPrimitives.yellow,
    error: _colorPrimitives.red,
  ),
  IconColors(
    primary: _colorPrimitives.white,
    secondary: _colorPrimitives.grey5,
    disabled: _colorPrimitives.grey10,
    success: _colorPrimitives.green,
    warning: _colorPrimitives.yellow,
    error: _colorPrimitives.red,
  ),
);
