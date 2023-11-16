import 'package:flutter/material.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        width: 490,
        height: 1,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 203, 198, 198),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
