import 'package:flutter/material.dart';

class MoonTextForm extends StatelessWidget {
  final String label;
  final TextEditingController? userInputController;
  final Function()? onEditingComplete;
  final FocusNode? focusNode;

  MoonTextForm({
    required this.label,
    this.userInputController,
    this.onEditingComplete,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: userInputController,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(),
      ),
    );
  }
}
