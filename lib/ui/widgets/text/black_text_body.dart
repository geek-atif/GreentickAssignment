import '../../styles/fonts.dart';
import 'package:flutter/material.dart';

class BlackTextBody extends StatelessWidget {
  final String text;
  const BlackTextBody({required this.text}) : super();
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        color: Colors.black38,
        fontFamily: Fonts.roboto,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
