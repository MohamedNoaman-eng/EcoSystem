// import 'package:flutter/material.dart';
// import 'package:gearsforgears/ViewModel/centerLocationView.dart';
// import 'package:gearsforgears/localization/localization_constants.dart';
// import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
//
// class Location extends StatelessWidget {
//   final List<CenterLocationView> locations;
//   Location({this.locations});
//   @override
//   Widget build(BuildContext context) {
//     return SimpleDialog(
//       title: Center(child: Text(LocalizationConst.translate(context, "Locations"))),
//       children: <Widget>[
//         Container(
//             width: 60.0,
//             height: 230.0,
//             child: ListView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemCount: locations.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: <Widget>[
//                       Card(
//                         child: ListTile(
//                             title: Text(locations[index].address),
//                             subtitle: Text(locations[index].areaId.nameAr),
//                             trailing: IconButton(
//                               icon: Icon(
//                                 Icons.phonelink_ring,
//                               ),
//                               iconSize: 50,
//                               color: Colors.green,
//                               splashColor: Colors.amber,
//                               onPressed: () {
//                                 showDialog(
//                                     context: context,
//                                     builder:(context)=> new Phones(
//                                         phone: locations[index].phone));
//                               },
//                             )),
//                       ),
//                     ],
//                   );
//                 })),
//       ],
//     );
//   }
// }
//
// class Phones extends StatefulWidget {
//   const Phones({this.phone});
//   final List<dynamic> phone;
//
//   @override
//   State createState() => new PhonesState();
// }
//
// class PhonesState extends State<Phones> {
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   Widget build(BuildContext context) {
//     return SimpleDialog(
//       title: Center(
//           child: Text(
//             LocalizationConst.translate(context, "Contact Us"),
//         style: TextStyle(color: Colors.green),
//       )),
//       children: <Widget>[
//         Container(
//             width: 50.0,
//             height: 150.0,
//             child: ListView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemCount: widget.phone.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: <Widget>[
//                       Card(
//                         child: ListTile(
//                           title: FlatButton(
//                             onPressed: () => UrlLauncher.launch(
//                                 "tel:+${widget.phone[index]}"),
//                             child: new Text(widget.phone[index]),
//                             color: Colors.green,
//                           ),
//                         ),
//                       ),
//                     ],
//                   );
//                 })),
//       ],
//     );
//   }
// }
