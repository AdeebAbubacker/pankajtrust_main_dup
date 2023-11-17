import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pankajtrust_app/application/add_achievment/add_achievment_bloc.dart';
import 'package:pankajtrust_app/application/family/family_bloc.dart';
import 'package:pankajtrust_app/application/horizontal_radio_btn/horizontal_radio_btn_bloc.dart';
import 'package:pankajtrust_app/application/students_app_form/students_app_form_bloc.dart';
import 'package:pankajtrust_app/presentation/student/screens/Students_application_form/students_application_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HorizontalRadioBtnBloc(),
        ),
        BlocProvider(
          create: (context) => StudentsAppFormBloc(),
        ),
        BlocProvider(
          create: (context) => FamilyBloc(),
        ),
        BlocProvider(
          create: (context) => AddAchievmentBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(),
        home: const StudentsApplicationForm(),
      ),
    );
  }
}
