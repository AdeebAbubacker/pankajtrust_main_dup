// import 'package:flutter/material.dart';
// import 'package:pankajtrust_app/core/constant/constants.dart';


// class BankAccount extends StatefulWidget {
//   bool forBankAccountholder = false;
//   bool forNoAccountUsers = false;

//   BankAccount({
//     required this.forBankAccountholder,
//     required this.forNoAccountUsers,
//     Key? key,
//   }) : super(key: key);

//   @override
//   _BankAccountState createState() => _BankAccountState();
// }

// class _BankAccountState extends State<BankAccount> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.only(left: 4),
//                   child: Text(
//                     'Do you have bank account',
//                     style: kCardContentSmallStyle,
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 18,
//                 ),
//                 Text(
//                   'yes',
//                   style: kCardContentSmallStyle,
//                 ),
//                 Checkbox(
//                     value: widget.forBankAccountholder,
//                     onChanged: (value) {
//                       setState(() {
//                         widget.forBankAccountholder = value as bool;
//                         widget.forBankAccountholder ? widget.forNoAccountUsers = false : '';
//                       });
//                     }),
//                 Text(
//                   'no',
//                   style: kCardContentSmallStyle,
//                 ),
//                 Checkbox(
//                     value: widget.forNoAccountUsers,
//                     onChanged: (value) {
//                       setState(() {
//                         widget.forNoAccountUsers = value as bool;
//                         widget.forNoAccountUsers ? widget.forBankAccountholder = false : '';
//                       });
//                     }),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
