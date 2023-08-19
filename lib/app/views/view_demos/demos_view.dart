import 'package:app_developments/app/app.dart';
import 'package:app_developments/app/theme/dark/dark_theme_data.dart';
import 'package:app_developments/app/theme/light/light_theme_data.dart';
import 'package:app_developments/core/widgets/basic_text_widget.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

class DemosView extends StatelessWidget {
  const DemosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Changing"),
        leading: Image.network(
            "https://localizify.com/assets/io-format-landings/flutter-arb-editor/intro.png"),
        actions: [
          IconButton(
              onPressed: () {
                App.setTheme(context, AppThemeDark.getTheme());
              },
              icon: Icon(Icons.dark_mode)),
          IconButton(
              onPressed: () {
                App.setTheme(context, AppThemeLight.getTheme());
              },
              icon: Icon(Icons.light_mode))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Flavor.I.isDevelopment) const Text('Development'),
            const Text('App'),
            const BasicTextWidget(
              label: "Demo Label 14",
            ),
            const BasicTextWidget.h4(
              label: "Demo Label 18",
            ),
            const BasicTextWidget.h3(
              label: "Demo Label 22",
            ),
            const BasicTextWidget.h2(
              label: "Demo Label 28",
            ),
            const BasicTextWidget.h1(
              label: "Demo Label 32",
            ),
          ],
        ),
      ),
    );
  }
}
