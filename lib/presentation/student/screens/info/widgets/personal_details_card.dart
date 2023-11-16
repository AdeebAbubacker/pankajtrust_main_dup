// -------------------- 1st Card ------------------------------------------

// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/widgets/do_you_have_bankaccount.dart';
import 'package:pankajtrust_app/presentation/student/widgets/enterDOB.dart';
import 'package:pankajtrust_app/presentation/student/widgets/horizontalRadioBtn.dart';
import 'package:pankajtrust_app/presentation/student/widgets/label_email.dart';
import 'package:pankajtrust_app/presentation/student/widgets/label_inputText.dart';
import 'package:pankajtrust_app/presentation/student/widgets/labul_NumericalText.dart';
import 'package:pankajtrust_app/presentation/student/widgets/spacer_height.dart';

class PersonalDetailsCard extends StatefulWidget {
  bool mybool;

  final width;
  PersonalDetailsCard({
    super.key,
    this.width,
    required this.mybool,
  });

  @override
  State<PersonalDetailsCard> createState() => _PersonalDetailsCardState();
}

class _PersonalDetailsCardState extends State<PersonalDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelInputText(label: 'Name'),
          const HeightSpacer(height: 14),
          horizontalRadioBtn(
            steps: [
              Content(choiceLabel: 'Male'),
              Content(choiceLabel: 'Female'),
            ],
            title: 'Gender',
          ),
          const HeightSpacer(height: 14),
          const DOBPicker(),
          const HeightSpacer(height: 14),
          LabelInputText(
            label: 'Address',
            maxlines: 3,
          ),
          const HeightSpacer(height: 14),
          LabelNumericalText(mytext: 'Phone no'),
          const HeightSpacer(height: 14),
          LabelEmail(
            labelText: 'email',
          ),
          const DoYouHaveBankAcc(),
        ],
      ),
    );
  }
}
