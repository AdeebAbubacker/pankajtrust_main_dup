import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';

class Marksdetails extends StatelessWidget {
  final String title;

  Marksdetails({Key? key, this.title = 'SSLC Marks'}) : super(key: key);

  TextEditingController marks = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: kCardContentStyle),
        SizedBox(
          width: 90,
          height: 30,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  controller: marks,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(7),
                    TextInputFormater(decimalRange: 2),
                  ],
                  style: kCardContentStyle, // Set font size to 8
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TextInputFormater extends TextInputFormatter {
  final int decimalRange;

  TextInputFormater({required this.decimalRange});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;
    if (!newText.contains('%')) {
      // Check if the decimal point is present
      if (newText.contains('.')) {
        List<String> parts = newText.split('.');

        // Limit the length of the integer part to 2 digits
        if (parts[0].length > 2) {
          newText = oldValue.text;
        }

        // Limit the decimal part to the specified range
        if (parts.length == 2 && parts[1].length > decimalRange) {
          newText = '${parts[0]}.${parts[1].substring(0, decimalRange)}';
        }
      } else {
        // Limit the length of the entire input to 2 digits
        if (newText.length > 2) {
          newText = oldValue.text;
        }
      }
    }
    if (!newText.endsWith('%')) {
      newText += ' %';
    }
    return newValue.copyWith(text: newText);
  }
}
