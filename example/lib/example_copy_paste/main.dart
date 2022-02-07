import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

// ignore_for_file: lines_longer_than_80_chars

// -----------------------------------------------------------------------------
/// EXAMPLE COPY PASTE THEME
//
// Use this example to via copy-paste test theme using code generated by
// the Themes PlayGround https://rydmike.com/flexcolorschemeV4Tut5
// -----------------------------------------------------------------------------
void main() => runApp(const DemoApp());

class DemoApp extends StatefulWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  ThemeMode themeMode = ThemeMode.system;

  // ignore: unused_field
  late final String? _fontFamily = GoogleFonts.notoSans().fontFamily;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Copy Playground Theme',
      // Uncomment the theme setup below and delete the copy-pasted theme
      // further below ,if you want to try this app with a Flutter SDK
      // standard theme.

      // theme: ThemeData.from(colorScheme: const ColorScheme.light()).copyWith(
      //   typography: Typography.material2018(platform: defaultTargetPlatform),
      // ),
      // darkTheme: ThemeData.from(colorScheme: const ColorScheme.dark()).copyWith(
      //   typography: Typography.material2018(platform: defaultTargetPlatform),
      // ),

      // Delete the theme below and try the standard one above, or
      // copy-paste new setup code from the Themes Playground
      // https://rydmike.com/flexcolorschemeV4Tut5
      // over the theme below, to try a new copy pasted theme.

      theme: FlexThemeData.light(
        scheme: FlexScheme.blueWhale,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 22,
        appBarStyle: FlexAppBarStyle.primary,
        appBarOpacity: 0.95,
        appBarElevation: 0.0,
        transparentStatusBar: true,
        tabBarStyle: FlexTabBarStyle.forAppBar,
        tooltipsMatchBackground: true,
        swapColors: false,
        lightIsWhite: false,
        useSubThemes: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: GoogleFonts.notoSans().fontFamily,
        subThemesData: const FlexSubThemesData(
          useTextTheme: true,
          defaultRadius: 11.0,
          fabUseShape: false,
          interactionEffects: true,
          tabBarIndicatorSchemeColor: SchemeColor.secondary,
          chipSchemeColor: SchemeColor.secondary,
          bottomNavigationBarElevation: 0.0,
          bottomNavigationBarOpacity: 1.0,
          navigationBarOpacity: 1.0,
          bottomNavigationBarSchemeColor: SchemeColor.onSurface,
          navigationBarIconSchemeColor: SchemeColor.onSurface,
          navigationBarTextSchemeColor: SchemeColor.onSurface,
          navigationBarHighlightSchemeColor: SchemeColor.primaryContainer,
          navigationBarMutedUnselectedText: true,
          navigationBarMutedUnselectedIcon: true,
          inputDecoratorIsFilled: true,
          inputDecoratorBorderType: FlexInputBorderType.outline,
          inputDecoratorUnfocusedHasBorder: true,
          inputDecoratorSchemeColor: SchemeColor.primaryContainer,
          blendOnColors: true,
          blendTextTheme: true,
          popupMenuOpacity: 0.95,
        ),
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.blueWhale,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 22,
        appBarStyle: FlexAppBarStyle.background,
        appBarOpacity: 0.95,
        appBarElevation: 0.0,
        transparentStatusBar: true,
        tabBarStyle: FlexTabBarStyle.forAppBar,
        tooltipsMatchBackground: true,
        swapColors: false,
        darkIsTrueBlack: false,
        useSubThemes: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: GoogleFonts.notoSans().fontFamily,
        subThemesData: const FlexSubThemesData(
          useTextTheme: true,
          defaultRadius: 11.0,
          fabUseShape: false,
          interactionEffects: true,
          tabBarIndicatorSchemeColor: SchemeColor.secondary,
          chipSchemeColor: SchemeColor.secondary,
          bottomNavigationBarElevation: 0.0,
          bottomNavigationBarOpacity: 1.0,
          navigationBarOpacity: 1.0,
          bottomNavigationBarSchemeColor: SchemeColor.onSurface,
          navigationBarIconSchemeColor: SchemeColor.onSurface,
          navigationBarTextSchemeColor: SchemeColor.onSurface,
          navigationBarHighlightSchemeColor: SchemeColor.primaryContainer,
          navigationBarMutedUnselectedText: true,
          navigationBarMutedUnselectedIcon: true,
          inputDecoratorIsFilled: true,
          inputDecoratorBorderType: FlexInputBorderType.outline,
          inputDecoratorUnfocusedHasBorder: true,
          inputDecoratorSchemeColor: SchemeColor.primaryContainer,
          blendOnColors: true,
          blendTextTheme: true,
          popupMenuOpacity: 0.95,
        ),
      ),

      // ThemeMode toggle via callback
      themeMode: themeMode,
      home: HomePage(
        themeMode: themeMode,
        onThemeModeChanged: (ThemeMode mode) {
          setState(() {
            themeMode = mode;
          });
        },
      ),
    );
  }
}
