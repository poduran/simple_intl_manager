import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider() {
    WidgetsBinding.instance.platformDispatcher.platformBrightness ==
            Brightness.dark
        ? setDarkMode()
        : setLightMode();
  }

  ThemeData? currentTheme;

  setLightMode() {
    // currentTheme = ThemeData(
    //     brightness: Brightness.light,
    //     iconTheme: const IconThemeData(color: Color(0xFF7E57C2)),
    //     colorScheme: const ColorScheme(
    //         brightness: Brightness.light,
    //         primary: Color(0xFF7E57C2),
    //         onPrimary: Colors.black,
    //         secondary: Color(0xFF5E35B1),
    //         onSecondary: Colors.black,
    //         error: Colors.red,
    //         onError: Colors.red,
    //         background: Color(0xFFFFFFFF),
    //         onBackground: Color(0xFF1E1E1E),
    //         surface: Color(0xFF3F51B5),
    //         onSurface: Color(0xFF6A5ACD)));

    currentTheme = FlexThemeData.light(
      scheme: FlexScheme.indigo,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 1,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 8,
        blendOnColors: false,
        useM2StyleDividerInM3: true,
        defaultRadius: 12.0,
        filledButtonRadius: 40.0,
        filledButtonSchemeColor: SchemeColor.primaryContainer,
        elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
        elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
        outlinedButtonOutlineSchemeColor: SchemeColor.primary,
        toggleButtonsBorderSchemeColor: SchemeColor.primary,
        segmentedButtonSchemeColor: SchemeColor.primary,
        segmentedButtonBorderSchemeColor: SchemeColor.primary,
        unselectedToggleIsColored: true,
        sliderValueTinted: true,
        inputDecoratorSchemeColor: SchemeColor.primary,
        inputDecoratorBackgroundAlpha: 31,
        inputDecoratorUnfocusedHasBorder: false,
        inputDecoratorFocusedBorderWidth: 1.0,
        inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
        fabUseShape: true,
        fabAlwaysCircular: true,
        fabSchemeColor: SchemeColor.tertiary,
        popupMenuRadius: 8.0,
        popupMenuElevation: 3.0,
        alignedDropdown: true,
        useInputDecoratorThemeInDialogs: true,
        drawerIndicatorRadius: 12.0,
        drawerIndicatorSchemeColor: SchemeColor.primary,
        bottomNavigationBarMutedUnselectedLabel: false,
        bottomNavigationBarMutedUnselectedIcon: false,
        menuRadius: 8.0,
        menuElevation: 3.0,
        menuBarRadius: 0.0,
        menuBarElevation: 2.0,
        menuBarShadowColor: Color(0x00000000),
        navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
        navigationBarMutedUnselectedLabel: false,
        navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
        navigationBarMutedUnselectedIcon: false,
        navigationBarIndicatorSchemeColor: SchemeColor.primary,
        navigationBarIndicatorOpacity: 1.00,
        navigationBarIndicatorRadius: 12.0,
        navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
        navigationRailMutedUnselectedLabel: false,
        navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
        navigationRailMutedUnselectedIcon: false,
        navigationRailIndicatorSchemeColor: SchemeColor.primary,
        navigationRailIndicatorOpacity: 1.00,
        navigationRailIndicatorRadius: 12.0,
        navigationRailBackgroundSchemeColor: SchemeColor.surface,
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
        useTertiary: true,
        keepPrimary: true,
      ),
      tones: FlexTones.jolly(Brightness.light),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      // fontFamily: GoogleFonts.notoSans().fontFamily,
    );
    notifyListeners();
  }

  setDarkMode() {
    // currentTheme = ThemeData(
    //     brightness: Brightness.dark,
    //     iconTheme: const IconThemeData(color: Color(0xFF800080)),
    //     colorScheme: const ColorScheme(
    //         brightness: Brightness.dark,
    //         primary: Color(0xFF800080),
    //         onPrimary: Colors.white,
    //         secondary: Color(0xFF663399),
    //         onSecondary: Colors.white,
    //         error: Colors.red,
    //         onError: Colors.red,
    //         background: Color(0xFF1E1E1E),
    //         onBackground: Color(0xFF1E1E1E),
    //         surface: Color(0xFF6A5ACD),
    //         onSurface: Color(0xFF2E2E2E)));

    currentTheme = FlexThemeData.dark(
      scheme: FlexScheme.indigo,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 2,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 10,
        blendTextTheme: true,
        useM2StyleDividerInM3: true,
        defaultRadius: 12.0,
        filledButtonRadius: 40.0,
        filledButtonSchemeColor: SchemeColor.primaryContainer,
        elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
        elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
        outlinedButtonOutlineSchemeColor: SchemeColor.primary,
        toggleButtonsBorderSchemeColor: SchemeColor.primary,
        segmentedButtonSchemeColor: SchemeColor.primary,
        segmentedButtonBorderSchemeColor: SchemeColor.primary,
        unselectedToggleIsColored: true,
        sliderValueTinted: true,
        inputDecoratorSchemeColor: SchemeColor.primary,
        inputDecoratorBackgroundAlpha: 43,
        inputDecoratorUnfocusedHasBorder: false,
        inputDecoratorFocusedBorderWidth: 1.0,
        inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
        fabUseShape: true,
        fabAlwaysCircular: true,
        fabSchemeColor: SchemeColor.tertiary,
        popupMenuRadius: 8.0,
        popupMenuElevation: 3.0,
        alignedDropdown: true,
        useInputDecoratorThemeInDialogs: true,
        drawerIndicatorRadius: 12.0,
        drawerIndicatorSchemeColor: SchemeColor.primary,
        bottomNavigationBarMutedUnselectedLabel: false,
        bottomNavigationBarMutedUnselectedIcon: false,
        menuRadius: 8.0,
        menuElevation: 3.0,
        menuBarRadius: 0.0,
        menuBarElevation: 2.0,
        menuBarShadowColor: Color(0x00000000),
        navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
        navigationBarMutedUnselectedLabel: false,
        navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
        navigationBarMutedUnselectedIcon: false,
        navigationBarIndicatorSchemeColor: SchemeColor.primary,
        navigationBarIndicatorOpacity: 1.00,
        navigationBarIndicatorRadius: 12.0,
        navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
        navigationRailMutedUnselectedLabel: false,
        navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
        navigationRailMutedUnselectedIcon: false,
        navigationRailIndicatorSchemeColor: SchemeColor.primary,
        navigationRailIndicatorOpacity: 1.00,
        navigationRailIndicatorRadius: 12.0,
        navigationRailBackgroundSchemeColor: SchemeColor.surface,
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
        useTertiary: true,
      ),
      tones: FlexTones.jolly(Brightness.dark),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      // fontFamily: GoogleFonts.notoSans().fontFamily,
    );
    notifyListeners();
  }
}
