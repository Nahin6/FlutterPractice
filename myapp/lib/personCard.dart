// ignore: file_names
import 'package:flutter/material.dart';
import 'person.dart';

class PersonCard extends StatelessWidget {
  final Person person;
  final Function() delete;
  // ignore: prefer_const_constructors_in_immutables
  PersonCard({Key? key, required this.person, required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Name: ${person.name}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          Text(
            "ID: ${person.id}",
            style: const TextStyle(fontSize: 20),
          ),
          TextButton.icon(
            onPressed: delete,
            label: const Text(
              'delete',
            ),
            icon: const Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
