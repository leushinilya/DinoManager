import 'dart:ui';

class Palette {
  SurfaceColors surfaceColors;
  TextColors textColors;
  IconColors iconColors;

  Palette(
    this.surfaceColors,
    this.textColors,
    this.iconColors,
  );
}

class SurfaceColors {
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color tertiary;
  final Color disabled;

  SurfaceColors({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.tertiary,
    required this.disabled,
  });
}

class TextColors {
  final Color primary;
  final Color secondary;
  final Color disabled;
  final Color success;
  final Color warning;
  final Color error;

  TextColors({
    required this.primary,
    required this.secondary,
    required this.disabled,
    required this.success,
    required this.warning,
    required this.error,
  });
}

class IconColors {
  final Color primary;
  final Color secondary;
  final Color disabled;
  final Color success;
  final Color warning;
  final Color error;
  final Color accent;

  IconColors({
    required this.primary,
    required this.secondary,
    required this.disabled,
    required this.success,
    required this.warning,
    required this.error,
    required this.accent,
  });
}
