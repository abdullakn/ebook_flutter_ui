import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  final int selected;
  final Function callback;
  CustomBar({required this.selected, required this.callback});
  final tabs=['TextBook','AudioBook'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Custom Tab"),
    );
  }
}
