import 'package:flutter/cupertino.dart';

class MoonClickableImage extends StatelessWidget {
  final Widget body;
  final Function() onTap;

  MoonClickableImage({required this.body, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: body,
      ),
    );
  }
}
