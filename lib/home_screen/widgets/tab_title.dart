import "package:flutter/material.dart";

class TabTitle extends StatelessWidget {
  TabTitle({super.key, required this.title});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 25,
      ),
    );
  }
}