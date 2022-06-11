import 'package:flutter/material.dart';

class MoonButton extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;
  final bool isCenter;
  final Color? bgColor;

  MoonButton(
      {required this.buttonText,
      required this.onPressed,
      this.isCenter = true,
      this.bgColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: bgColor != null ? bgColor! : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
            side: BorderSide(color: bgColor != null ? bgColor! : Colors.white),
          ),
        ),
        onPressed: onPressed,
        child: Align(
          alignment: isCenter ? Alignment.center : Alignment.centerLeft,
          child: Text(
            buttonText,
          ),
        ),
      ),
    );
  }
}
