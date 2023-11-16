import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/widgets/input_text.dart';
import 'package:pankajtrust_app/presentation/student/widgets/input_label.dart';

// ignore: must_be_immutable
class LabelInputText extends StatelessWidget {
  final int maxlines;
  String label;
  final double padding;
  LabelInputText(
      {this.maxlines = 1, super.key, required this.label, this.padding = 5});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        InputLabel(mytext: label),
        Container(
          width: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 136, 133, 133),
              width: 1.0,
            ),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          child: InpuText(
            maxlines: maxlines,
          ),
        ),
      ],
    );
  }
}
