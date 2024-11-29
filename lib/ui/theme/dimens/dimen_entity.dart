class Dimens {
  const Dimens(
    this.spacings,
    this.corners,
  );

  final Spacings spacings;
  final Corners corners;
}

class Spacings {
  const Spacings({
    required this.spacingXs,
    required this.spacingS,
    required this.spacingM,
    required this.spacingL,
    required this.spacingXl,
    required this.spacing2Xl,
    required this.spacing3Xl,
    required this.spacing4Xl,
    required this.spacing5Xl,
    required this.spacing6Xl,
    required this.spacing7Xl,
    required this.spacing8Xl,
  });

  final double spacingXs;
  final double spacingS;
  final double spacingM;
  final double spacingL;
  final double spacingXl;
  final double spacing2Xl;
  final double spacing3Xl;
  final double spacing4Xl;
  final double spacing5Xl;
  final double spacing6Xl;
  final double spacing7Xl;
  final double spacing8Xl;
}

class Corners {
  const Corners({
    required this.cornerNone,
    required this.cornerExtraSmall,
    required this.cornerSmall,
    required this.cornerMedium,
    required this.cornerLarge,
    required this.cornerExtraLarge,
  });

  final double cornerNone;
  final double cornerExtraSmall;
  final double cornerSmall;
  final double cornerMedium;
  final double cornerLarge;
  final double cornerExtraLarge;
}
