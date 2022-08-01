import 'package:flutter/material.dart';

class CustomTextArea extends StatelessWidget {
  final TextEditingController controller;
  final String name;

  const CustomTextArea(
      {Key key, @required this.controller, @required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _textArea();
  }

  TextField _textArea() {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: name,
      ),
    );
  }
}
