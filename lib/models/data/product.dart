class ProductModel {
  int? id;
  String? imageUrl;
  String? productName;
  String? price;

  ProductModel({this.id, this.imageUrl, this.productName, this.price});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['imageUrl'];
    productName = json['productName'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['imageUrl'] = imageUrl;
    data['productName'] = productName;
    data['price'] = price;
    return data;
  }
}
