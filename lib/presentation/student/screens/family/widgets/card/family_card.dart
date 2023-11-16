import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/widgets/checkboxdata.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';
import 'package:pankajtrust_app/presentation/student/widgets/label_bottomSheet.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/local_widgets/checkbox_data.dart';
import 'package:pankajtrust_app/presentation/student/widgets/label_inputText.dart';
import 'package:pankajtrust_app/presentation/student/widgets/labul_NumericalText.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/local_widgets/lineDivider.dart';
import 'package:pankajtrust_app/presentation/student/widgets/input_label.dart';
import 'package:pankajtrust_app/presentation/student/widgets/label_name.dart';
import 'package:pankajtrust_app/presentation/student/widgets/spacer_height.dart';

class FamilyCard extends StatefulWidget {
  final Widget siblings;
  bool mybool;

  final width;
  FamilyCard({
    super.key,
    this.width,
    required this.mybool,
    this.siblings = const Text(''),
  });

  @override
  State<FamilyCard> createState() => _FamilyCardState();
}

class _FamilyCardState extends State<FamilyCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 12),
            child: Text('Father', style: kfamiltTitleTextColor),
          ),
          const LabelName(labelText: 'Name'),
          const HeightSpacer(height: 14),
          const CheckBoxWorkout(
            width: 46,
          ),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Occupation / Job'),
          labelBottomSheet(
              title: 'Occupation Details',
              hintText: 'Search For Occupation / Job'),
          const HeightSpacer(height: 14),
          LabelNumericalText(mytext: 'Monthly Income'),
          const LineDivider(),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 12),
            child: Text('Mother', style: kfamiltTitleTextColor),
          ),
          const LabelName(labelText: 'Name'),
          const HeightSpacer(height: 14),
          const CheckBoxData(label: 'Alive', width: 130),
          const HeightSpacer(height: 14),
          const CheckBoxData(label: 'Disabled / Bedriden', width: 26),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Occupation / Job'),
          labelBottomSheet(
              title: 'Occupation Details',
              hintText: 'Search For Occupation / Job'),
          const HeightSpacer(height: 14),
          LabelNumericalText(mytext: 'Monthly Income'),
          const LineDivider(),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 12),
            child: Text('Guardian', style: kfamiltTitleTextColor),
          ),
          const LabelName(labelText: 'Name'),
          const HeightSpacer(height: 14),
          LabelInputText(label: 'Relation'),
          const HeightSpacer(height: 14),
          const CheckBoxData(label: 'Alive', width: 130),
          const HeightSpacer(height: 14),
          const CheckBoxData(label: 'Disabled / Bedriden', width: 26),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Occupation / Job'),
          labelBottomSheet(
              title: 'Occupation Details',
              hintText: 'Search For Occupation / Job'),
          const HeightSpacer(height: 14),
          LabelNumericalText(mytext: 'Monthly Income'),
          const LineDivider(),
          widget.siblings
        ],
      ),
    );
  }
}
