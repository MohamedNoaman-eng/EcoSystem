// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// //
//
// // ignore: must_be_immutable
// class FilterDialog extends StatefulWidget {
//   @override
//   _FilterDialogState createState() => _FilterDialogState();
//   final List<Car> cars;
//   Car selectedCar;
//   final List<CarModel> carModels;
//   // CarModel selectedModel;
//   final Function(CarModel, String, Car) carFiltered;
//   final List<String> carYears;
//   String year;
//
//   FilterDialog(
//       {this.cars,
//       this.selectedCar,
//       this.carModels,
//       this.selectedModel,
//       this.carFiltered,
//       this.carYears,
//       this.year = ""});
// }
//
// class _FilterDialogState extends State<FilterDialog> {
//   List<CarModel> filteredCarModels = new List<CarModel>();
//   bool yearValidation = false;
//   String yr = "";
//
//   fillCarModel(carId) {
//     if (carId == "0") {
//       setState(() {
//         filteredCarModels =
//             widget.carModels.where((element) => element.id == "0").toList();
//       });
//       return;
//     }
//     setState(() {
//       filteredCarModels =
//           widget.carModels.where((element) => element.carId == carId).toList();
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     if (widget.selectedCar.id == "0") {
//       setState(() {
//         filteredCarModels =
//             widget.carModels.where((element) => element.id == "0").toList();
//       });
//     } else {
//       setState(() {
//         filteredCarModels = widget.carModels
//             .where((element) => element.carId == widget.selectedCar.id)
//             .toList();
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SimpleDialog(
//       children: <Widget>[
//         Center(
//           child: Container(
//             width: 300,
//             child: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: DropdownButton(
//                   icon: Icon(Icons.directions_car),
//                   // hint: Text("Select Car"),
//                   value: widget.selectedCar,
//                   items: widget.cars.map<DropdownMenuItem<Car>>((car) {
//                     return DropdownMenuItem<Car>(
//                       value: car,
//                       child: Center(
//                         child: Text(
//                           car.nameEn + " ",
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     );
//                   }).toList(),
//                   onChanged: (Car value) {
//                     fillCarModel(value.id);
//                     setState(() {
//                       widget.selectedCar = value;
//                       widget.selectedModel = filteredCarModels[0];
//                     });
//                   }),
//             ),
//           ),
//         ),
//         Center(
//           child: Container(
//             width: 300.0,
//             child: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: DropdownButton(
//                   icon: Icon(Icons.branding_watermark),
//                   hint: Text(LocalizationConst.translate(context, "Select Car")),
//                   value: widget.selectedModel,
//                   items: filteredCarModels.map((model) {
//                     return DropdownMenuItem<CarModel>(
//                       value: model,
//                       child: Text(
//                         model.nameEn + " ",
//                         textAlign: TextAlign.center,
//                       ),
//                     );
//                   }).toList(),
//                   onChanged: (CarModel value) {
//                     setState(() {
//                       widget.selectedModel = value;
//                     });
//                   }),
//             ),
//           ),
//         ),
//         Center(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(30, 8, 30, 8),
//             child: TextFormField(
//               decoration: new InputDecoration(
//                   labelText: LocalizationConst.translate(context, "Model Year"),
//                   errorText: yearValidation ? LocalizationConst.translate(context, "invalid Year") : null),
//               keyboardType: TextInputType.number,
//               maxLength: 4,
//               cursorColor: yearValidation ? Colors.red : Colors.green[50],
//               // Only numbers can be entered
//               onChanged: (value) {
//                 if (value.length > 0 && value.length < 4) {
//                   this.setState(() {
//                     yearValidation = true;
//                   });
//                 } else {
//                   var y = int.parse(value);
//                   if (y < 1900) {
//                     this.setState(() {
//                       yearValidation = true;
//                     });
//                   } else {
//                     this.setState(() {
//                       yearValidation = false;
//                       yr = value;
//                     });
//                   }
//                 }
//               },
//             ),
//           ),
//         ),
//         FlatButton(
//           child: Text(LocalizationConst.translate(context, "Filter")),
//           color: Colors.amber,
//           onPressed: () {
//             widget.carFiltered(widget.selectedModel, yr, widget.selectedCar);
//             Navigator.pop(context);
//           },
//         )
//       ],
//     );
//   }
// }
