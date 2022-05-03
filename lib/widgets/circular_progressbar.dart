import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress(
      {Key? key, this.size = 80, this.color = const Color(0xFFE05C70)})
      : super(key: key);

  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: CircularProgressIndicator(
          color: color,
        ),
      ),
    );
  }
}
