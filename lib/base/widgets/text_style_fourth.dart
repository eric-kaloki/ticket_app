import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  const TextStyleFourth(
      {super.key, required this.text, this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: AppStyles.headLineStyle4.copyWith(
          color: Colors.white,
        ));
  }
}
