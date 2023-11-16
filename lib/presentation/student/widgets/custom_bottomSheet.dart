import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/colors/colors.dart';

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class customBottomSheet extends StatefulWidget {
  final String title;
  final hintText;
  final Widget widget;
  List<String> listofData = [];
  customBottomSheet(
      {Key? key,
      this.listofData = const [
        'Agriculture',
        'Fishing',
        'Plumbing',
        'Painting',
        'Soldier',
        'Policeman',
        'Driver',
        'Clerk',
        "Office Staff",
        'Supervisor',
        'Able Seamen',
        'Accountants',
        'Auditors',
        'Actors',
        'Actuaries',
        'Acupuncturists',
        'Acute Care Nurses',
        'Education Specialists',
        'Adjustment Clerks',
        'Administrative Law Judges',
        'Adjudicators',
        'Hearing Officers',
        'Administrative Services Managers',
        'Adult Literacy',
        'Remedial Education',
        'GED Teachers and Instructors',
        'Advanced Practice Psychiatric Nurses',
        'Advertising and Promotions Managers',
        'Advertising Sales Agents',
        'Aerospace Engineering and Operations Technicians',
        'Aerospace Engineers',
      ],
      required this.title,
      this.hintText, required this.widget})
      : super(key: key);

  @override
  State<customBottomSheet> createState() => _labelBottomSheetState();
}

class _labelBottomSheetState extends State<customBottomSheet> {
  final List<String> emptyList = [];
  final TextEditingController textController = TextEditingController();

  void _showModal(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.2,
              maxChildSize: 0.9,
              expand: false,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 1, left: 6),
                            child: Text(
                              widget.title,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 92, 91, 90),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.close,
                              color: kredColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    
                    Container(
                      width: 500,
                      height: 1,
                      color: const Color.fromARGB(255, 211, 211, 208),
                    ),
                    Expanded(child: ListView.builder(
                      shrinkWrap: true,
                      controller: scrollController,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return
                      widget.widget;
                    },),)
         
                    // Expanded(
                    //   child: ListView.separated(
                    //     controller: scrollController,
                    //     itemCount: (widget.listofData != null &&
                    //             widget.listofData.isNotEmpty)
                    //         ? widget.listofData.length
                    //         : emptyList.length,
                    //     separatorBuilder: (context, index) {
                    //       return const Divider();
                    //     },
                    //     itemBuilder: (context, index) {
                    //       return InkWell(
                    //         child: (widget.listofData != null &&
                    //                 widget.listofData.isNotEmpty)
                    //             ? showBottomSheetData(index, widget.listofData)
                    //             : showBottomSheetData(index, emptyList),
                    //         onTap: () {
                    //           textController.text = widget.listofData[index];
                    //           Navigator.of(context).pop();
                    //         },
                    //       );
                    //     },
                    //   ),
                    // )
                  ],
                );
              },
            );
          },
        );
      },
    );
  }

  Widget showBottomSheetData(int index, List data) {
    final isFirstItem = index == 0;
    final isLastItem = index == data.length - 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isFirstItem)
          const Padding(
            padding: EdgeInsets.only(top: 4),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
        Container(
          margin: const EdgeInsets.only(top: 12, bottom: 10, left: 14),
          child: Text(
            data[index],
            style: const TextStyle(
              color: Color.fromARGB(255, 84, 84, 84),
              fontSize: 14,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        if (isLastItem)
          const Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
      ],
    );
  }

  List<String> _buildSearchList(String userSearchTerm) {
    List<String> searchList = [];

    for (int i = 0; i < emptyList.length; i++) {
      String name = emptyList[i];
      if (name.toLowerCase().contains(userSearchTerm.toLowerCase())) {
        searchList.add(emptyList[i]);
      }
    }
    return searchList;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromARGB(255, 136, 133, 133),
                      width: 1.0,
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color.fromARGB(255, 92, 92, 92),
                      fontSize: 14,
                    ),
                    readOnly: true,
                    maxLines: 1,
                    controller: textController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      suffixIcon:
                          Icon(Icons.arrow_drop_down, color: Colors.black),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _showModal(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 370,
                    height: 48,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}