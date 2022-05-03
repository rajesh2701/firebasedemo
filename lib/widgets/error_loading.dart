import 'package:firebasedemo/theme/theme.dart';
import 'package:flutter/material.dart';

class ErrorLoadingData extends StatelessWidget {
  const ErrorLoadingData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Error Loading Data...',
        style: TextStyle(color: AppColorsTheme.accentColor),
      ),
    );
  }
}
