import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoonClickableText extends StatelessWidget {
  final String label;
  final Function() onTap;

  MoonClickableText({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(label),
      ),
    );
  }
}
