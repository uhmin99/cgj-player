import "package:flutter/material.dart";

class SearchAndProfile extends StatelessWidget {
  SearchAndProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Search(),
        _MyProfile(),
      ],
    );
  }
}

class _Search extends StatelessWidget {
  _Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.grey,
      child: Row(
        children: [
          // TextField(),
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
      )
    );
  }
}