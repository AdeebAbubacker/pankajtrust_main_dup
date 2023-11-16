import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';

class LandAnswerTextField extends StatelessWidget {
  const LandAnswerTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 60,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelStyle: kCardContentStyle,
                    contentPadding:
                        const EdgeInsets.only(right: 0, left: 10, bottom: 0, top: 0),
                  ),
                  style: kCardContentStyle,
                  textAlign: TextAlign.left,
                  textInputAction: TextInputAction.done,
                  textAlignVertical: TextAlignVertical.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('cents', style: kCardContentStyle),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
