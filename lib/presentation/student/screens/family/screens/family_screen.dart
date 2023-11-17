import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankajtrust_app/application/family/family_bloc.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/screens/family_layout.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/card/family_card.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/card/siblings_card.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/local_widgets/do_you_have_siblings.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<FamilyBloc, FamilyState>(
      builder: (context, state) {
        return Column(
          children: [
            FamilyLayout(
              familyLayoutheight: 1579,
              title: 'Family Details',
              familyDetailsCard: FamilyCard(
                mybool: false,
                siblings: DoYouHaveSiblings(),
              ),
            ),
            state.siblings
                ? Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: FamilyLayout(
                      familyLayoutheight: 583 +
                          (state.numberOfSiblings > 0
                              ? (state.numberOfSiblings) * 505
                              : 0),
                      title: 'Siblings Details',
                      familyDetailsCard: SiblingsCard(
                        mybool: false,
                      ),
                    ),
                  )
                : const Text(''),
          ],
        );
      },
    );
  }
}
