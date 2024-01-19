import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Display text style
  static get displayMedium50 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 50.fSize,
      );
  static get displayMediumRockwellNova =>
      theme.textTheme.displayMedium!.rockwellNova.copyWith(
        fontSize: 50.fSize,
        fontWeight: FontWeight.w400,
      );
  static get displayMediumffdc5049 => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFFDC5049),
        fontSize: 50.fSize,
        fontWeight: FontWeight.w900,
      );
  static get displayMediumffffffff => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 50.fSize,
        fontWeight: FontWeight.w900,
      );
}

extension on TextStyle {
  TextStyle get ruda {
    return copyWith(
      fontFamily: 'Ruda',
    );
  }

  TextStyle get rockwellNova {
    return copyWith(
      fontFamily: 'Rockwell Nova',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }
}
