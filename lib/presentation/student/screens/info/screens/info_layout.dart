import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/colors/colors.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';
import 'package:pankajtrust_app/presentation/student/widgets/myPadding.dart';

class InfoLayout extends StatefulWidget {
  final double InfoLayoutheight;
  final String title;

  final String banktitle;
  final Widget? bankData;
  final Widget personalDetailCard;

  InfoLayout({
    this.bankData,
    super.key,
    required this.personalDetailCard,
    required this.title,
    required this.banktitle,
    required this.InfoLayoutheight,
  });
  // ignore: prefer_typing_uninitialized_variables

  @override
  State<InfoLayout> createState() => _InfoLayoutState();
}

class _InfoLayoutState extends State<InfoLayout> {
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
              height: widget.InfoLayoutheight,
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
                  MyPadding(widget: widget.personalDetailCard),
                  MyPadding(
                    paddingTop: 10,
                    widget: Text(
                      widget.banktitle,
                      style: kCardFilterTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: widget.bankData,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
