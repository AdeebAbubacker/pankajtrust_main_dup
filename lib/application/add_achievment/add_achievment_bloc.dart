import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:pankajtrust_app/presentation/student/screens/academics/widgets/drop_down_menu.dart';
import 'package:pankajtrust_app/presentation/student/screens/academics/widgets/file_picker.dart';
import 'package:pankajtrust_app/presentation/student/widgets/input_label.dart';
import 'package:pankajtrust_app/presentation/student/widgets/label_inputText.dart';
import 'package:pankajtrust_app/presentation/student/widgets/spacer_height.dart';

part 'add_achievment_event.dart';
part 'add_achievment_state.dart';

class AddAchievmentBloc extends Bloc<AddAchievmentEvent, AddAchievmentState> {
  AddAchievmentBloc()
      : super(AddAchievmentState(
            siblingCards: List.empty(), numberOfSiblings: 0)) {
    on<AddMoreAchievments>((event, emit) {
      List<Widget> updatedSiblings = List.from(state.siblingCards);
      int newIndex = updatedSiblings.length + 1;
      final numberofSiblings = newIndex;
      updatedSiblings.add(_buildSiblingCard(newIndex));
      emit(AddAchievmentState(
          siblingCards: updatedSiblings, numberOfSiblings: numberofSiblings));
    });
  }
}

Widget _buildSiblingCard(int siblingIndex) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 1,
        width: 380,
        color: const Color.fromARGB(255, 187, 189, 190),
      ),
      const HeightSpacer(),
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
    ],
  );
}
