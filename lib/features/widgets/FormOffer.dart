// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
//
// class FormOffer extends StatefulWidget {
//   final Password model;
//   final String userId;
//   final String centerId;
//   const FormOffer({this.model, this.userId, this.centerId});
//   @override
//   State createState() => new FormOfferState();
// }
//
// class FormOfferState extends State<FormOffer> {
//   final _formKey = GlobalKey<FormState>();
//   var orignalPrice;
//   var pass;
//   var userPromo;
//   var checkUserPromo;
//   var ourPromo = 2291999;
//   bool checkedValue = false;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       content: Stack(
//         overflow: Overflow.visible,
//         children: <Widget>[
//           Positioned(
//             right: -40.0,
//             top: -40.0,
//             child: InkResponse(
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//               child: CircleAvatar(
//                 child: Icon(Icons.close),
//                 backgroundColor: Colors.amber,
//                 foregroundColor: Colors.black,
//               ),
//             ),
//           ),
//           Form(
//             key: _formKey,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     decoration: new InputDecoration(labelText: LocalizationConst.translate(context, "Price")),
//                     keyboardType: TextInputType.number,
//                     // Only numbers can be entered
//                     validator: (value) {
//                       if (value.isEmpty) {
//                         return LocalizationConst.translate(context, "You forgot to write the price");
//                       }
//                       setState(() {
//                         orignalPrice = value;
//                       });
//                       return null;
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     obscureText: true,
//                     decoration: new InputDecoration(labelText: LocalizationConst.translate(context, "Code of offer")),
//                     keyboardType: TextInputType.number,
//                     // Only numbers can be entered
//                     validator: (value) {
//                       if (value.trim().isEmpty) {
//                         return LocalizationConst.translate(context, "You forgot to write the Password");
//                       }
//                       setState(() {
//                         pass = value;
//                       });
//                       if (pass != this.widget.model.password.toString()) {
//                         return LocalizationConst.translate(context, "Wrong");
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(0.0),
//                   child: CheckboxListTile(
//                     title: Text(
//                       LocalizationConst.translate(context, "Have a promo code"),
//                       style: TextStyle(fontSize: 12.0),
//                     ),
//                     value: checkedValue,
//                     onChanged: (newValue) {
//                       setState(() {
//                         checkedValue = newValue;
//                       });
//                     },
//                     controlAffinity: ListTileControlAffinity
//                         .leading, //  <-- leading Checkbox
//                   ),
//                 ),
//                 Visibility(
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: TextFormField(
//                       decoration: new InputDecoration(labelText: LocalizationConst.translate(context, "Promo Code")),
//                       keyboardType: TextInputType.number,
//                       // Only numbers can be entered
//                       validator: (value) {
//                         if (value.isEmpty && checkedValue == true) {
//                           return LocalizationConst.translate(context, "You forgot to write the Promo Code");
//                         }
//                         setState(() {
//                           userPromo = value;
//                         });
//                         return null;
//                       },
//                     ),
//                   ),
//                   maintainSize: true,
//                   maintainAnimation: true,
//                   maintainState: true,
//                   visible: checkedValue,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: RaisedButton(
//                     child: Text(LocalizationConst.translate(context, "GET OFFER")),
//                     color: Colors.amber,
//                     onPressed: () {
//                       if (_formKey.currentState.validate()) {
//                         _formKey.currentState.save();
//                         if (this.userPromo == this.ourPromo.toString()) {
//                           showDialog(
//                               context: context,
//                               builder:(context)=> new Offer(
//                                 price: double.parse(this.orignalPrice),
//                                 offer: 0.1,
//                                 percentage: "10%",
//                                 userId: this.widget.userId,
//                                 centerId: this.widget.centerId,
//                               ));
//                         } else if (pass ==
//                             this.widget.model.password.toString()) {
//                           showDialog(
//                               context: context,
//                               builder:(context)=> new Offer(
//                                 price: double.parse(this.orignalPrice),
//                                 offer: this.widget.model.offer,
//                                 percentage: "5%",
//                               ));
//                         }
//                       }
//                     },
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
