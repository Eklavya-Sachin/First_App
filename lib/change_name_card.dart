import 'package:flutter/material.dart';
import 'bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BgImage(),
        const SizedBox(height: 20),
        Text(
          myText,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter somthing here",
                labelText: "Name"),
          ),
        )
      ],
    );
  }
}