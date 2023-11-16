import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/screens/home/screens/home_layout.dart';
import 'package:pankajtrust_app/presentation/student/screens/home/widgets/home_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeLayout(
          HomeLayoutheight: 670,
          title: 'Residential Details',
          homeDetailsCard: HomeCard(mybool: false),
        ),
      ],
    );
  }
}
