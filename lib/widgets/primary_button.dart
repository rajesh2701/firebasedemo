import 'package:firebasedemo/theme/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key, required this.buttonTitle, required this.onPressed})
      : super(key: key);

  final String buttonTitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: AppColorsTheme.accentColor,
      child: MaterialButton(
        onPressed: onPressed,
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Text(
          buttonTitle.toUpperCase(),
          style: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
