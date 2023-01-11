// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:gearsforgears/models/offermodel.dart';
//
// Widget serviceWidget(
//     String serviceName, bool isActive, Function(String) onClick, {bool hasOffer=false}) {
//   return Align(
//     child: Stack(
//       alignment: Alignment(0.5,-1.0),
//       children:[ Container(
//
//         width: 110,
//         margin: EdgeInsets.only(right: 10),
//         decoration: new BoxDecoration(
//           color: isActive == false
//               ? Color.fromRGBO(143, 95, 67, 1)
//               : Color.fromRGBO(248, 173, 60, 1),
//           border: Border.all(color: Colors.black, width: 0.0),
//           borderRadius: new BorderRadius.all(Radius.elliptical(30, 30)),
//         ),
//         child: InkWell(
//           onTap: () => {onClick(serviceName)},
//           child: Center(
//             child: Text(
//               serviceName.toUpperCase(),
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//       ),
//         if(hasOffer)
//           Container(
//             width: 40.0,
//             height: 13.0,
//             child:Center(child: Text("offer",style: TextStyle(fontSize: 10.0,color: Colors.white),)),
//             decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(15.0)
//             ),
//           )
//
//     ]
//     ),
//   );
// }
