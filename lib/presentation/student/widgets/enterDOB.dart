import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';

class DOBPicker extends StatefulWidget {
  const DOBPicker({Key? key}) : super(key: key);

  @override
  _DOBPickerState createState() => _DOBPickerState();
}

class _DOBPickerState extends State<DOBPicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  String formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              'Enter Date of birth',
              style: kCardContentStyle,
            ),
          ),
          const SizedBox(
            width: 39,
          ),
          IconButton(
              onPressed: () => _selectDate(context),
              icon: const Icon(Icons.calendar_month)),
          Text(
            formatDate(selectedDate),
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
