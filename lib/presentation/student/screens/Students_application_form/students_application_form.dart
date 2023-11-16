import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankajtrust_app/application/students_app_form/students_app_form_bloc.dart';
import 'package:pankajtrust_app/package/presentation/custom_stepper.dart';
import 'package:pankajtrust_app/presentation/student/screens/academics/screens/academics_screen.dart';
import 'package:pankajtrust_app/presentation/student/screens/academics/screens/achievments_screen.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/screens/family_screen.dart';
import 'package:pankajtrust_app/presentation/student/screens/home/screens/home_screen.dart';
import 'package:pankajtrust_app/presentation/student/screens/info/widgets/bank_details_card.dart';
import 'package:pankajtrust_app/presentation/student/screens/info/screens/info_layout.dart';
import 'package:pankajtrust_app/presentation/student/screens/info/widgets/personal_details_card.dart';
import 'package:pankajtrust_app/presentation/student/screens/info/screens/bank_layout.dart';
import 'package:pankajtrust_app/presentation/student/widgets/bottom_card.dart';
import 'package:pankajtrust_app/presentation/student/widgets/next_and_previous_button.dart';
import 'package:pankajtrust_app/presentation/student/widgets/spacer_height.dart';

class StudentsApplicationForm extends StatelessWidget {
  const StudentsApplicationForm({super.key});

  // int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StudentsAppFormBloc, StudentsAppFormState>(
        builder: (context, state) {
          void handleNextPage(int step) {
            context
                .read<StudentsAppFormBloc>()
                .add(DoYouHaveBankAccEvent(currentStep: step));
          }

          void handlePrevious(int step) {
            context
                .read<StudentsAppFormBloc>()
                .add(DoYouHaveBankAccEvent(currentStep: step));
          }

          return CustomStepper(
            currentPage: state.currentStep,
            steps: [
              AddStep(
                status: 'Progress',
                stepIcon: Icons.school_rounded,
                title: 'Info',
                content: Padding(
                  padding: EdgeInsets.zero,
                  child: Column(
                    children: <Widget>[
                      InfoLayout(
                        title: 'Personal Info',
                        banktitle:
                            state.forBankAccountholder ? 'Bank Details' : '',
                        InfoLayoutheight:
                            state.forBankAccountholder ? 1180 : 700,
                        personalDetailCard: PersonalDetailsCard(
                          mybool: false,
                        ),
                        bankData: state.forBankAccountholder
                            ? BankMainLayout(
                                cardData:
                                    BankCard(mybool: state.forNoAccountUsers),
                                row: const Text(''))
                            : const Text(''),
                      ),
                      const HeightSpacer(),
                      BottomCard(
                        nextBtn: InkResponse(
                            onTap: () {
                              handleNextPage(1);
                            },
                            child: const StepperBtn(
                              nextorprev: 'Next',
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              AddStep(
                title: 'Family',
                content: Column(
                  children: [
                    const FamilyScreen(),
                    const HeightSpacer(),
                    BottomCard(
                      prevBtn: InkResponse(
                          onTap: () {
                            handlePrevious(0);
                          },
                          child: const StepperBtn(nextorprev: 'Prev')),
                      nextBtn: InkResponse(
                          onTap: () {
                            handleNextPage(2);
                          },
                          child: const StepperBtn(nextorprev: 'Next')),
                    ),
                  ],
                ),
                stepIcon: Icons.family_restroom,
                status: 'To do',
              ),
              AddStep(
                title: 'Academics',
                content: Column(
                  children: [
                    const AcademicsScreen(),
                    const HeightSpacer(),
                    const AchievmentsScreen(),
                    BottomCard(
                      prevBtn: InkResponse(
                        onTap: () {
                          handlePrevious(1);
                        },
                        child: const StepperBtn(nextorprev: 'Prev'),
                      ),
                      nextBtn: InkResponse(
                          onTap: () {
                            handleNextPage(3);
                          },
                          child: const StepperBtn(
                            nextorprev: 'Next',
                          )),
                    ),
                  ],
                ),
                stepIcon: Icons.school_rounded,
                status: 'Completed',
              ),
              AddStep(
                title: 'Home',
                content: Column(
                  children: [
                    const HomeScreen(),
                    const HeightSpacer(),
                    BottomCard(
                      prevBtn: InkResponse(
                        onTap: () {
                          handlePrevious(2);
                        },
                        child: const StepperBtn(nextorprev: 'Prev'),
                      ),
                    ),
                  ],
                ),
                stepIcon: Icons.home,
                status: 'Progress',
              ),
            ],
            config: StepConfig(
              activeConfig: AcitiveUi(),
              inactiveConfig: InacitiveUi(iconBgColor: Colors.black45),
            ),
          );
        },
      ),
    );
  }
}
