import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/widgets/input_label.dart';
import 'package:pankajtrust_app/presentation/student/widgets/label_bottomSheet.dart';
import 'package:pankajtrust_app/presentation/student/widgets/label_inputText.dart';
import 'package:pankajtrust_app/presentation/student/widgets/spacer_height.dart';

class BankCard extends StatefulWidget {
  bool mybool;
  final width;
  BankCard({super.key, this.width, required this.mybool});

  @override
  State<BankCard> createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelInputText(label: 'Full name (As per bank record)'),
          const HeightSpacer(height: 14),
          LabelInputText(label: 'Account Number'),
          const HeightSpacer(height: 14),
          LabelInputText(label: 'Residential Address', maxlines: 3),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Bank Name'),
          labelBottomSheet(
            title: 'Bank Details',
            hintText: 'Search For Bank',
            listofData: const [
              ' ALLAHABAD BANK',
              'ANDHRA BANK',
              'AXIS BANK',
              'BANK OF BARODA',
              'BANK OF INDIA',
              'BANK OF MAHARASHTRA',
              'CANARA BANK',
              'CORPORATION BANK',
              'HONG KONG & SHANGHAI BANK (HSBC)',
              'INDIAN BANK',
              'INDIAN OVERSEAS BANK',
              'KARUR VYSYA BANK',
              'NORTH MALABAR GRAMIN BANK',
              'ORIENTAL BANK OF COMMERCE',
              'PUNJAB AND SIND BANK',
              'PUNJAB NATIONAL BANK',
              'RESERVE BANK OF INDIA',
              'SOUTH INDIAN BANK',
              'STANDARD CHARTERED BANK',
              'STATE BANK OF BIKANER AND JAIPUR',
              'STATE BANK OF HYDERABAD',
              'STATE BANK OF MYSORE',
              'STATE BANK OF PATIALA',
              'STATE BANK OF TRAVANCORE',
              'SYNDICATE BANK',
              'LAKSHMI VILAS BANK LTD ',
              'CENTRAL BANK OF INDIA',
              'DENA BANK',
              'BANDHAN BANK LIMITED',
              'KERALA GRAMIN BANK',
              'LAXMI VILAS BANK',
              'BANK OF BAHARAIN AND KUWAIT BSC',
              'BHARATIYA MAHILA BANK LIMITED',
              'CATHOLIC SYRIAN BANK',
              'CITIBANK NA (CITY)',
              'CITY UNION BANK LTD',
              'DEVELOPMENT CREDIT BANK',
              'DHANALAXMI BANK',
              'DOHA BANK1 branch',
              'FEDERAL BANK LTD ',
              'HDFC BANK LTD',
              'ICICI BANK LTD',
              'IDBI BANK LTD',
              'ING VYSYA BANK LTD',
              'INDUSIND BANK LTD',
              'JAMMU AND KASHMIR BANK LTD',
              'KARNATAKA BANK LTD',
              'KOTAK MAHINDRA BANK',
              'STATE BANK OF INDIA',
              'TAMILNAD MERCANTILE BANK LTD',
              'YES BANK LTD',
            ],
          ),
          const HeightSpacer(height: 14),
          LabelInputText(label: 'Branch IFSC'),
          const HeightSpacer(height: 14),
        ],
      ),
    );
  }
}
