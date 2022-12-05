import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

extension CorePaletteToColorScheme on CorePalette {
  /// Create a [ColorScheme] from the given `palette` obtained from the Android OS.
  ColorScheme? toColorScheme({
    Brightness brightness = Brightness.light,
    required bool highContrast,
  }) {
    final Scheme scheme;

    late ColorScheme colorScheme;

    switch (brightness) {
      case Brightness.light:
        scheme = Scheme.lightFromCorePalette(this);
        break;
      case Brightness.dark:
        scheme = Scheme.darkFromCorePalette(this);
        break;
    }

    if (highContrast) {
      if (brightness == Brightness.light) {
        colorScheme = ColorScheme.highContrastLight(
          primary: Color(scheme.primary),
          onPrimary: Color(scheme.onPrimary),
          primaryContainer: Color(scheme.primaryContainer),
          onPrimaryContainer: Color(scheme.onPrimaryContainer),
          secondary: Color(scheme.secondary),
          onSecondary: Color(scheme.onSecondary),
          secondaryContainer: Color(scheme.secondaryContainer),
          onSecondaryContainer: Color(scheme.onSecondaryContainer),
          tertiary: Color(scheme.tertiary),
          onTertiary: Color(scheme.onTertiary),
          tertiaryContainer: Color(scheme.tertiaryContainer),
          onTertiaryContainer: Color(scheme.onTertiaryContainer),
          error: Color(scheme.error),
          onError: Color(scheme.onError),
          errorContainer: Color(scheme.errorContainer),
          onErrorContainer: Color(scheme.onErrorContainer),
          outline: Color(scheme.outline),
          background: Color(scheme.background),
          onBackground: Color(scheme.onBackground),
          surface: Color(scheme.surface),
          onSurface: Color(scheme.onSurface),
          surfaceVariant: Color(scheme.surfaceVariant),
          onSurfaceVariant: Color(scheme.onSurfaceVariant),
          inverseSurface: Color(scheme.inverseSurface),
          onInverseSurface: Color(scheme.inverseOnSurface),
          inversePrimary: Color(scheme.inversePrimary),
          shadow: Color(scheme.shadow),
          brightness: brightness,
        );
      } else {
        colorScheme = ColorScheme.highContrastDark(
          primary: Color(scheme.primary),
          onPrimary: Color(scheme.onPrimary),
          primaryContainer: Color(scheme.primaryContainer),
          onPrimaryContainer: Color(scheme.onPrimaryContainer),
          secondary: Color(scheme.secondary),
          onSecondary: Color(scheme.onSecondary),
          secondaryContainer: Color(scheme.secondaryContainer),
          onSecondaryContainer: Color(scheme.onSecondaryContainer),
          tertiary: Color(scheme.tertiary),
          onTertiary: Color(scheme.onTertiary),
          tertiaryContainer: Color(scheme.tertiaryContainer),
          onTertiaryContainer: Color(scheme.onTertiaryContainer),
          error: Color(scheme.error),
          onError: Color(scheme.onError),
          errorContainer: Color(scheme.errorContainer),
          onErrorContainer: Color(scheme.onErrorContainer),
          outline: Color(scheme.outline),
          background: Color(scheme.background),
          onBackground: Color(scheme.onBackground),
          surface: Color(scheme.surface),
          onSurface: Color(scheme.onSurface),
          surfaceVariant: Color(scheme.surfaceVariant),
          onSurfaceVariant: Color(scheme.onSurfaceVariant),
          inverseSurface: Color(scheme.inverseSurface),
          onInverseSurface: Color(scheme.inverseOnSurface),
          inversePrimary: Color(scheme.inversePrimary),
          shadow: Color(scheme.shadow),
          brightness: brightness,
        );
      }
    } else {
      colorScheme = ColorScheme(
        primary: Color(scheme.primary),
        onPrimary: Color(scheme.onPrimary),
        primaryContainer: Color(scheme.primaryContainer),
        onPrimaryContainer: Color(scheme.onPrimaryContainer),
        secondary: Color(scheme.secondary),
        onSecondary: Color(scheme.onSecondary),
        secondaryContainer: Color(scheme.secondaryContainer),
        onSecondaryContainer: Color(scheme.onSecondaryContainer),
        tertiary: Color(scheme.tertiary),
        onTertiary: Color(scheme.onTertiary),
        tertiaryContainer: Color(scheme.tertiaryContainer),
        onTertiaryContainer: Color(scheme.onTertiaryContainer),
        error: Color(scheme.error),
        onError: Color(scheme.onError),
        errorContainer: Color(scheme.errorContainer),
        onErrorContainer: Color(scheme.onErrorContainer),
        outline: Color(scheme.outline),
        background: Color(scheme.background),
        onBackground: Color(scheme.onBackground),
        surface: Color(scheme.surface),
        onSurface: Color(scheme.onSurface),
        surfaceVariant: Color(scheme.surfaceVariant),
        onSurfaceVariant: Color(scheme.onSurfaceVariant),
        inverseSurface: Color(scheme.inverseSurface),
        onInverseSurface: Color(scheme.inverseOnSurface),
        inversePrimary: Color(scheme.inversePrimary),
        shadow: Color(scheme.shadow),
        brightness: brightness,
      );
    }

    return colorScheme;
  }
}
