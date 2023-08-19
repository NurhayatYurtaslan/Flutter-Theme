import 'package:app_developments/app/theme/light/light_theme_data.dart';
import 'package:app_developments/app/views/view_demos/demos_view.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    final stateLang = context.findAncestorStateOfType<_AppState>();

    stateLang?.changeLanguage(newLocale);
  }

  static void setTheme(BuildContext context, ThemeData newThemeData) {
    final stateTheme = context.findAncestorStateOfType<_AppState>();

    stateTheme?.changeTheme(newThemeData);
  }

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Locale _locale = const Locale('en', 'US');
  ThemeData _themeData = AppThemeLight.getTheme();

  changeTheme(ThemeData themeData) {
    setState(() {
      try {
        _themeData = themeData;
      } catch (e) {
        if (kDebugMode) {
          debugPrint(e.toString());
        }
        rethrow;
      }
    });
  }

  changeLanguage(Locale locale) {
    setState(() {
      try {
        _locale = locale;
      } catch (e) {
        // _locale = const Locale('en', 'US');
        if (kDebugMode) {
          debugPrint(e.toString());
        }
        rethrow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      // TODO : Material Router
      child: MaterialApp(
        theme: _themeData,
        locale: _locale,
        debugShowCheckedModeBanner: false,
        home: const DemosView(),
      ),
    );
  }
}