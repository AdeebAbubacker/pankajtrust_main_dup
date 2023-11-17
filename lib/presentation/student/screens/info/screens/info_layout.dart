import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankajtrust_app/application/students_app_form/students_app_form_bloc.dart';
import 'package:pankajtrust_app/core/colors/colors.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';
import 'package:pankajtrust_app/presentation/student/screens/info/screens/bank_layout.dart';
import 'package:pankajtrust_app/presentation/student/screens/info/widgets/bank_details_card.dart';
import 'package:pankajtrust_app/presentation/student/screens/info/widgets/personal_details_card.dart';
import 'package:pankajtrust_app/presentation/student/widgets/myPadding.dart';

class InfoLayout extends StatefulWidget {
  final String title;

  InfoLayout({
    super.key,
    required this.title,
  });
  // ignore: prefer_typing_uninitialized_variables

  @override
  State<InfoLayout> createState() => _InfoLayoutState();
}

class _InfoLayoutState extends State<InfoLayout> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
   
    return SingleChildScrollView(
      child: BlocBuilder<StudentsAppFormBloc, StudentsAppFormState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                        offset: Offset(5, 8),
                        blurRadius: 15,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  width: deviceWidth * 0.95,
                  height: state.forBankAccountholder ? 1180 : 700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          widget.title,
                          style: kCardFilterTextStyle,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: deviceWidth * 0.95,
                        color: khorizontlinecolor,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      MyPadding(
                        widget: PersonalDetailsCard(
                          mybool: false,
                        ),
                      ),
                      MyPadding(
                        paddingTop: 10,
                        widget: Text(
                          state.forBankAccountholder ? 'Bank Details' : '',
                          style: kCardFilterTextStyle,
                        ),
                      ),
                      state.forBankAccountholder
                          ? Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: BankMainLayout(
                                  cardData:
                                      BankCard(mybool: state.forNoAccountUsers),
                                  row: const Text('')),
                            )
                          : const Text(''),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
