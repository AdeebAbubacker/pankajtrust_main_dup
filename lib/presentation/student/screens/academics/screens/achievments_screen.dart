import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankajtrust_app/application/add_achievment/add_achievment_bloc.dart';
import 'package:pankajtrust_app/presentation/student/screens/academics/screens/achievments_layout.dart';
import 'package:pankajtrust_app/presentation/student/screens/academics/widgets/achievments_card.dart';

class AchievmentsScreen extends StatelessWidget {
  const AchievmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAchievmentBloc, AddAchievmentState>(
      builder: (context, state) {
        return Column(
          children: [
            Achievmentslayout(
              achievmentDetailsCard: AchievmentsCard(mybool: false),
              title: 'Achievments',
              Achievmentslayoutheight: 500 +
                  (state.numberOfSiblings > 0
                      ? (state.numberOfSiblings) * 367
                      : 0),
            ),
          ],
        );
      },
    );
  }
}

