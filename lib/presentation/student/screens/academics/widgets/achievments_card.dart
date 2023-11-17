import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankajtrust_app/application/add_achievment/add_achievment_bloc.dart';
import 'package:pankajtrust_app/presentation/student/screens/academics/widgets/file_picker.dart';
import 'package:pankajtrust_app/presentation/student/screens/academics/widgets/drop_down_menu.dart';
import 'package:pankajtrust_app/presentation/student/widgets/input_label.dart';
import 'package:pankajtrust_app/presentation/student/widgets/label_inputText.dart';
import 'package:pankajtrust_app/presentation/student/widgets/spacer_height.dart';

class AchievmentsCard extends StatefulWidget {
  final Widget siblings;
  bool mybool;

  final width;
  AchievmentsCard({
    super.key,
    this.width,
    required this.mybool,
    this.siblings = const Text(''),
  });

  @override
  State<AchievmentsCard> createState() => _AchievmentsCardState();
}

class _AchievmentsCardState extends State<AchievmentsCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<AddAchievmentBloc, AddAchievmentState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelInputText(
                label: 'Achievment Details',
                maxlines: 3,
              ),
              const HeightSpacer(),
              InputLabel(mytext: 'Category'),
              const MyDropdown(),
              const HeightSpacer(),
              InputLabel(mytext: 'Upload File'),
              FilePickerScreen(),
              const HeightSpacer(),
              Column(
                children: state.achievmentcards.toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<AddAchievmentBloc>()
                            .add(AddMoreAchievments());
                      },
                      child: const Text('ADD ACHIEVMENT')),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
