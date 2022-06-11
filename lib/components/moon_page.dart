import 'package:flutter/material.dart';
import '../utils/export.dart';

class MoonPage extends StatelessWidget {
  final Widget body;
  final String pageTitle;

  MoonPage({required this.pageTitle, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTitle)),
      body: Container(
          margin: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: body),
    );
  }
}
