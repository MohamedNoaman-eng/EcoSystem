// import 'package:flutter/material.dart';
// import 'package:gearsforgears/localization/localization_constants.dart';
// import 'package:gearsforgears/widgets/popupWhatsApp.dart';
//
// Widget bottonInHome(BuildContext context,
//     {IconData icon = Icons.ac_unit_sharp, String name, String pageName}) {
//   return Container(
//     width: MediaQuery.of(context).size.width * 0.45,
//     height: 90,
//     child: RaisedButton(
//       color: Colors.black,
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Icon(
//                 icon,
//                 size: 50,
//                 color: Color(0xfff8ad3c),
//               ),
//               SizedBox(height: 10,),
//               Text(
//                 LocalizationConst.translate(context, name),
//                 style: TextStyle(
//                   color: Colors.white70,
//                 ),
//                 overflow: TextOverflow.ellipsis,
//               )
//             ],
//           ),
//         ),
//       ),
//       onPressed: () {
//         if(name == 'Urgent Request'){
//           showDialog(
//             context: context,
//               builder: (BuildContext context) => popupDialog(context ,
//               title: name,
//               text: "This will send an urgent request to our whatsapp chat",
//               message: "Urgent Message \nThis is an urgent request message I need your help as soon as possible."),
//           );
//         }
//         else if(name == 'Service Request' && pageName == null){
//           showDialog(
//             context: context,
//               builder: (BuildContext context) => popupDialog(context ,
//               title: name,
//               text: "This will send an service request to our whatsapp chat",
//               message: "Service Request \nThis is a service request message I need your help as soon as possible."),
//           );
//         }
//         else if(name == 'Washing Request'){
//           showDialog(
//             context: context,
//               builder: (BuildContext context) => popupDialog(context ,
//               title: name,
//               text: "This will send an washing request to our whatsapp chat",
//               message: "Washing Request \nThis is a washing request message I need your help as soon as possible."),
//           );
//         }
//         else
//           Navigator.of(context).pushNamed(pageName);
//       },
//     ),
//   );
// }
