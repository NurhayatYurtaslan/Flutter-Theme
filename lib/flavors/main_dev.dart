import 'package:app_developments/starter.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  Flavor.create(
    // TODO : Add your own flavor values
    Environment.dev,
    name: "Dev",
    color: Colors.green,
  );
  launchApp();
}