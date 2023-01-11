// import 'package:flutter/material.dart';
// import 'package:gearsforgears/database.services/auth.dart';
// import 'package:gearsforgears/lang/language.dart';
// //import 'package:gearsforgears/localization/localization.dart';
// import 'package:gearsforgears/localization/localization_constants.dart';
// import 'package:gearsforgears/models/userDetail.dart';
// import 'package:gearsforgears/providers/requestprovider.dart';
// import 'package:gearsforgears/screens/Home/home.dart';
// import 'package:gearsforgears/screens/center/center_offers.dart';
// import 'package:gearsforgears/screens/orders/myorder.dart';
// import 'package:provider/provider.dart';
//
// // ignore: must_be_immutable
// class SideBar extends StatelessWidget {
//   //Localization _localization;
//   final UserDetail user;
//   final AuthService _auth = AuthService();
//
//   SideBar({this.user});
//
//   void changeLanguage(BuildContext context, int id) async {
//     Language language =
//         Language.languageList().firstWhere((element) => element.id == id);
//     LocalizationConst.changeLanguage(context, language);
//   }
//
//   // Widget _buildContactUs(BuildContext context){
//   //   return Text('test');
//   // }
//   Widget _buildContactUs(BuildContext context) {
//     return new AlertDialog(
//       title: const Text('Contact us'),
//       content: new Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           SelectableText(LocalizationConst.translate(context, "Phone") +
//               ": " +
//               "01026253681"),
//           SizedBox(
//             height: 10,
//           ),
//           SelectableText(LocalizationConst.translate(context, "Email") +
//               ": " +
//               "g4g.app883@gmail.com")
//         ],
//       ),
//       actions: <Widget>[
//         new FlatButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           textColor: Theme.of(context).primaryColor,
//           child: const Text('Close'),
//         ),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     //this._localization = Localization.of(context);
//     return Drawer(
//         child: Column(
//       children: <Widget>[
//         Container(
//           width: double.infinity,
//           padding: EdgeInsets.all(40),
//           color: Color(0xffC3C4C3),
//           child: Center(
//             child: Column(
//               children: <Widget>[
//                 Container(
//                   width: 75,
//                   height: 75,
//                   margin: EdgeInsets.fromLTRB(0, 18, 0, 5),
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("img/logo2.png"),
//                       fit: BoxFit.fill,
//                     ),
//                   )
//                 ),
//                 Text(
//                   LocalizationConst.translate(context, "welcome") +
//                       " " + user.firstName,
//                   style: TextStyle(fontSize: 23, color: Colors.black),
//                 )
//               ],
//             ),
//           ),
//         ),
//         ListTile(
//           leading: Icon(Icons.person),
//           title: Text(
//             LocalizationConst.translate(context, "Profile"),
//             style:
//                 TextStyle(fontSize: 16, color: Color.fromRGBO(50, 51, 53, 1)),
//           ),
//           onTap: () {
//             Navigator.of(context).pushNamed("/profile");
//           },
//         ),
//         ListTile(
//           leading: Icon(Icons.shopping_basket_rounded),
//           title: Text(
//             LocalizationConst.translate(context, "My Orders"),
//             style:
//             TextStyle(fontSize: 16, color: Color.fromRGBO(50, 51, 53, 1)),
//           ),
//           onTap: (){
//             Provider.of<RequestProvider>(context,listen: false).
//             getOrders(context).then((value) {
//               Navigator.pushAndRemoveUntil(
//                   context,
//                   MaterialPageRoute(builder: (context) => MyOrder()),
//                       (route) => false);
//             });
//
//           },
//         ),
//         ListTile(
//           leading: Icon(Icons.local_offer),
//           title: Text(
//             LocalizationConst.translate(context, "Offers"),
//             style:
//             TextStyle(fontSize: 16, color: Color.fromRGBO(50, 51, 53, 1)),
//           ),
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CenterOffers()));
//           },
//         ),
//         ListTile(
//           leading: Icon(Icons.settings),
//           title: Text(
//             LocalizationConst.translate(context, "Settings"),
//             style:
//                 TextStyle(fontSize: 16, color: Color.fromRGBO(50, 51, 53, 1)),
//           ),
//           onTap: null,
//         ),
//         ListTile(
//           leading: Icon(Icons.phone),
//           title: Text(
//             LocalizationConst.translate(context, "Contactus"),
//             style:
//                 TextStyle(fontSize: 16, color: Color.fromRGBO(50, 51, 53, 1)),
//           ),
//           onTap: () {
//             showDialog(
//                 barrierDismissible: false,
//                 context: context,
//                 // child: Text('Phone: 010'),
//                 builder: (BuildContext context) => _buildContactUs(context));
//           },
//         ),
//         ListTile(
//           leading: Icon(Icons.language),
//           title: Text(
//             LocalizationConst.translate(context, "Language"),
//             style:
//                 TextStyle(fontSize: 16, color: Color.fromRGBO(50, 51, 53, 1)),
//           ),
//           onTap: () {
//             showDialog(
//               context: context,
//               builder:(context)=>  new MyLanguage(
//                   onValueChange: changeLanguage,
//                   initialValue:
//                   LocalizationConst.getCurrentLang(context)),
//             );
//           },
//         ),
//         ListTile(
//           leading: Icon(Icons.exit_to_app),
//           title: Text(
//             LocalizationConst.translate(context, "Signout"),
//             style:
//                 TextStyle(fontSize: 16, color: Color.fromRGBO(50, 51, 53, 1)),
//           ),
//           onTap: () async {
//             await _auth.signOut().then((value) => {
//                   if (value) {Navigator.of(context).pushReplacementNamed("/")}
//                 });
//           },
//         ),
//       ],
//     ));
//   }
// }
