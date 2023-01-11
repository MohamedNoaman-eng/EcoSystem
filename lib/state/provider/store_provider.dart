

import 'package:flutter/material.dart';
import 'package:reviewapp/features/modles/product.dart';
import 'package:reviewapp/features/widgets/fluttertoast.dart';
import 'package:reviewapp/firebase/store/db_services.dart';
import 'dart:developer';

class StoreProvider extends ChangeNotifier{
  bool isLoading  = false;

  List<Product> products = [];
  StoreDB storeDB = StoreDB();
  void getProduct(){
    isLoading = true;
    notifyListeners();
    storeDB.getAllProducts().then((value) {
      products = value;
      isLoading = false;
      //log('**************************\n${products.length}');
      notifyListeners();
    }).catchError((onError){
      log('\n something went wrong: $onError \n');
      isLoading = true;
      notifyListeners();
    });
  }
}