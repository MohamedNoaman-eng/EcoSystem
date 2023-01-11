

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reviewapp/features/modles/product.dart';
import 'package:reviewapp/firebase/Repository.dart';

class StoreDB{
  Repository repo = Repository("products");

  Future addProduct({required Product product})async{
      await repo.addDocument(product.toJson());
  }
  Future updateProduct({required Product product})async{
    await repo.updateDocument(product.toJson(), product.pId);
  }
  Future deleteProduct({required String pId})async{
    await repo.removeDocument(pId);
  }
  Future getProductById({required String pId})async{
    await repo.getDocumentById(pId);
  }
  Future<List<Product>> getAllProducts()async{
    List<Product> products = [];
    var result = await repo.getDataCollection();
    result.docs.forEach((element) {
      products.add(Product.fromJson(element.data() as Map<String, dynamic>));
    });
    return products;
  }
}