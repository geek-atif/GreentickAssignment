import '../../styles/fonts.dart';
import '../../styles/my_app_theme.dart';
import 'package:flutter/material.dart';

class GreenTextBody extends StatelessWidget {
  final String text;
  const GreenTextBody({required this.text}) : super();
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        color: MyAppTheme.lightGreen,
        fontFamily: Fonts.roboto,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
