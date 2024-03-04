import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  final String name;
  final String date;

  const CustomList({super.key, required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              title: Text(
                "$name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                "$date",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
