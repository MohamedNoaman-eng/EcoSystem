// /import 'package:flutter/material.dart';
// import 'package:gearsforgears/localization/localization_constants.dart';
// import 'package:gearsforgears/models/spareparts.dart';
// import 'package:gearsforgears/providers/cartItems.dart';
// import 'package:gearsforgears/providers/favoriteItemslist.dart';
// import 'package:provider/provider.dart';
//
// import 'counter.dart';
//
// class SparePartCard extends StatefulWidget {
//   final SpareParts sparePart;
//   final Function(SpareParts) onClick;
//   final bool cartScreen;
//   bool isFavorite;
//   bool atCart;
//   final int count;
//   // CartService _cartService = new CartService();
//   // CartModel _cartModel = new CartModel();
//
//   SparePartCard(
//       {this.sparePart,
//       this.onClick,
//       this.isFavorite,
//       this.atCart,
//       this.cartScreen=false,
//       this.count = 0});
//
//   @override
//   _SparePartCardState createState() => _SparePartCardState();
// }
//
// class _SparePartCardState extends State<SparePartCard> {
//   @override
//   Widget build(BuildContext context) {
//     var _favoriteModel = context.read<FavoriteModelProvider>();
//     var _cartModel = context.read<CartProvider>();
//     return Container(
//       child: InkWell(
//         onTap: () {
//           this.widget.onClick(this.widget.sparePart);
//         },
//         child: Card(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.19,
//                   width: 140,
//                   padding: const EdgeInsets.all(0.0),
//                   child:this.widget.sparePart.images.isEmpty?SizedBox() :Image(
//                     image: NetworkImage(this.widget.sparePart.images[0]
//                     ),
//                     fit: BoxFit.fill,
//                   )
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.shopping_cart,
//                     color:
//                     widget.atCart
//                         ? Colors.green
//                         : Color.fromRGBO(157, 158, 163, 1),
//                   ),
//                   onPressed: () {
//                     if (widget.atCart) {
//                       _cartModel.remove(this.widget.sparePart);
//                     } else {
//                       _cartModel.add(this.widget.sparePart);
//                       // this._cartService.add(this.sparePart);
//                     }
//                     setState(() {
//                       widget.atCart = !widget.atCart;
//                     });
//                     (context as Element).markNeedsBuild();
//                   },
//                 )
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsetsDirectional.only(start: 10.0,end: 10.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         LocalizationConst.getCurrentLang(context)==1?
//                          this.widget.sparePart.nameEn:this.widget.sparePart.nameAr,
//                         style: TextStyle(
//                             fontSize: 17,
//                             fontFamily: "SanFranciscoDisplay-Semibold"),
//                       ),
//                       Text(LocalizationConst.getCurrentLang(context)==1?
//                         this.widget.sparePart.countryEn:this.widget.sparePart.countryAr,
//                         style: TextStyle(
//                             color: Color.fromRGBO(132, 132, 132, 1),
//                             fontFamily: "SanFranciscoDisplay-Semibold"),
//                       ),
//                       Text(LocalizationConst.getCurrentLang(context)==1?
//                         "£" + this.widget.sparePart.price:"ج" + this.widget.sparePart.price,
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontFamily: "SanFranciscoDisplay-Semibold"),
//                       )
//                     ],
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       this.widget.cartScreen
//                           ? Container(
//                               width: 80,
//                               height: 35,
//                               child: CounterWidget(
//                                 count: this.widget.count,
//                                 sparepartId: this.widget.sparePart.id,
//                               ))
//                           : IconButton(
//                               icon: Icon(
//                                 Icons.favorite,
//                                 color: widget.isFavorite
//                                     ? Colors.red
//                                     : Color.fromRGBO(157, 158, 163, 1),
//                               ),
//                               onPressed: () {
//                                 if (widget.isFavorite) {
//                                   _favoriteModel.remove(this.widget.sparePart);
//                                 } else {
//                                   _favoriteModel.add(this.widget.sparePart);
//                                 }
//                                 setState(() {
//                                   widget.isFavorite =
//                                   !widget.isFavorite;
//                                 });
//                                 (context as Element).markNeedsBuild();
//                               },
//                             )
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         )),
//       ),
//       decoration: new BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(4.0))),
//     );
//   }
// }
