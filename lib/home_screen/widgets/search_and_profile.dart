import "package:flutter/material.dart";

class SearchAndProfile extends StatelessWidget {
  SearchAndProfile({super.key, this.marginTop=0, this.marginBottom=0});

  final double marginTop;
  final double marginBottom;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        _Search(),
        Spacer(),
        _MyProfile(),
      ],
    );
  }
}

class _Search extends StatelessWidget {
  _Search({super.key});

  final textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.grey,
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          // TextField(
          //   controller: textFieldController,
          // ),
          Icon(Icons.search)
        ],
      ),
    );
  }
}

class _MyProfile extends StatelessWidget {
  _MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        "https://picsum.photos/id/237/200/300",
        height: 30,
        width: 30,
        fit: BoxFit.cover,
      )
    );
  }
}