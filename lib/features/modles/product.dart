class Product {
  final String pId;
  final String pName;
  final String pDescription;
  final int pPrice;
  final int pRate;

  Product({required this.pId, required this.pName,
    required this.pDescription,
    required this.pPrice,
    required this.pRate});

  toJson() {
    return {
      'id': pId,
      'name': pName,
      'description': pDescription,
      'price': pPrice,
      'rate': pRate
    };
  }

  factory Product.fromJson(Map data){
    return Product(pId: data['id'],
      pName: data['name'],
      pDescription: data['description'],
      pPrice: data['price'],
      pRate: data['rate'],);
  }
}
