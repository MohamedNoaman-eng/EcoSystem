import 'package:cloud_firestore/cloud_firestore.dart';

class Repository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  final String path;

  CollectionReference? ref;

  Repository(this.path) {
    ref = _db.collection(path);
  }

  Future<QuerySnapshot> getDataCollection() {
    return ref!.get();
  }

  // Stream<QuerySnapshot> streamDataCollection() {
  //   return ref.snapshots() ;
  // }

  Future<DocumentSnapshot> getDocumentById(String id) {
    return ref!.doc(id).get();
  }

  Future<void> removeDocument(String id) {
    return ref!.doc(id).delete();
  }

  Future<DocumentReference> addDocument(Map<String,dynamic> data) {
    return ref!.add(data);
  }


  Future<void> updateDocument(Map<String,dynamic> data, String id) {
    return ref!.doc(id).update(data);
  }
}
