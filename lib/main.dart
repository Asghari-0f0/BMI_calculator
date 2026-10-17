import 'package:flutter/material.dart';
import 'package:my_app/input_Page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0D22)),

        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
