import 'package:flutter/material.dart';

class Label {
  String? labelName, badge;
  Icon? labelsIcon;
  Color? badgeColor;

  Label(
      {required this.labelName,
        required this.labelsIcon,
        required this.badge,
        required this.badgeColor});
}

class GoogleApp {
  String? googleAppName, googleAppBadge;
  Icon? googleAppIcon;
  Color? googleAppColor;

  GoogleApp(
      {required this.googleAppName,
        required this.googleAppBadge,
        required this.googleAppIcon,
        required this.googleAppColor});
}


class Data {
  String title;
  IconData icon;
  IconData selectedIcon;

  Data(
      {required this.title,
        required this.icon,
        required this.selectedIcon});
}