import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final FaIconData? icon;
  final String? label;

  IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon, size: 80),
        SizedBox(height: 15),
        Text(label!, style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98))),
      ],
    );
  }
}
