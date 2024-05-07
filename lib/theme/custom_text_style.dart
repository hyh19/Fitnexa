import 'package:flutter/material.dart';

import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get miSansVF {
    return copyWith(
      fontFamily: 'MiSans VF',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get mILanPro {
    return copyWith(
      fontFamily: 'MI Lan Pro',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeMiSansVFGray400 =>
      theme.textTheme.bodyLarge!.miSansVF.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeMiSansVFGray500 =>
      theme.textTheme.bodyLarge!.miSansVF.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeMiSansVFPrimary =>
      theme.textTheme.bodyLarge!.miSansVF.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeMiSansVFPrimaryContainer =>
      theme.textTheme.bodyLarge!.miSansVF.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumMiSansVFBlack900 =>
      theme.textTheme.bodyMedium!.miSansVF.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumMiSansVFGray500 =>
      theme.textTheme.bodyMedium!.miSansVF.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumMiSansVFOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.miSansVF.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumMiSansVFOnPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.miSansVF.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumMiSansVFPrimary =>
      theme.textTheme.bodyMedium!.miSansVF.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.49),
        fontSize: 13.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 11.fSize,
      );
  static get bodyLargeMiSansVFSecondaryContainer =>
      theme.textTheme.bodyLarge!.miSansVF.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w300,
      );
// Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 32.fSize,
      );
  static get headlineLargeOnErrorContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 32.fSize,
      );
// Title text style
  static get titleLargeErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeMILanPro =>
      theme.textTheme.titleLarge!.mILanPro.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumMiSansVFOnErrorContainer =>
      theme.textTheme.titleMedium!.miSansVF.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMiSansVFPrimary =>
      theme.textTheme.titleMedium!.miSansVF.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMiSansVFPrimaryMedium =>
      theme.textTheme.titleMedium!.miSansVF.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.9),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
}
