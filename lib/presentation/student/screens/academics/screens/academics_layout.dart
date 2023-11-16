import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/colors/colors.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';
import 'package:pankajtrust_app/presentation/student/widgets/myPadding.dart';

class AcademicsLayout extends StatefulWidget {
  final double AcademicsLayoutheight;
  final String title;

  final Widget academicsDetailsCard;

  AcademicsLayout({
    super.key,
    required this.academicsDetailsCard,
    required this.title,
    required this.AcademicsLayoutheight,
  });
  // ignore: prefer_typing_uninitialized_variables

  @override
  State<AcademicsLayout> createState() => _AcademicsLayoutState();
}

class _AcademicsLayoutState extends State<AcademicsLayout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.16), // RGBA color
                      offset: Offset(5, 8), // X and Y offset
                      blurRadius: 15, // Blur radius (B)
                      spreadRadius: 0, // Spread (S)
                    ),
                  ]),
              width: 370,
              height: widget.AcademicsLayoutheight,
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
                    width: 370,
                    color: khorizontlinecolor,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  MyPadding(widget: widget.academicsDetailsCard),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
