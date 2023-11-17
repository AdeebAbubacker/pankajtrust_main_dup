import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/widgets/myPadding.dart';
import 'package:pankajtrust_app/presentation/student/widgets/textSpan.dart';

class BottomCard extends StatelessWidget {
  final Widget nextBtn;
  final Widget prevBtn;
  const BottomCard(
      {super.key,
      this.nextBtn = const Text(''),
      this.prevBtn = const Text('')});

  @override
  Widget build(BuildContext context) {
    final deiviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 237, 235, 235),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.16),
              offset: Offset(5, 8),
              blurRadius: 15,
              spreadRadius: 0,
            ),
          ]),
      width: deiviceWidth * 0.95,
      child: Column(
        children: [
          const MyPadding(paddingBottom: 5, paddingTop: 14, widget: Textspan()),
          MyPadding(
            paddingBottom: 30,
            widget: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: deviceHeight * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(alignment: Alignment.bottomLeft, child: prevBtn),
                    Align(alignment: Alignment.bottomRight, child: nextBtn),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
