import 'package:flutter/material.dart';

import '/data/models/models.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({
    Key? key,
    required this.items,
  }) : super(key: key);

  final Items items;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(
        16.0,
      ),
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          items.position!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          items.description!,
        ),
      ],
    );
  }
}
