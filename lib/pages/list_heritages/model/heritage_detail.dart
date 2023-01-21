class Product {
  String? productId;
  String? productName;
  double? price;
  String? description;
  String? productImage;
  int? productCount;

  Product(
      {this.productId,
        this.productName,
        this.price,
        this.description,
        this.productImage,
        this.productCount});

  Product.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    productName = json['productName'];
    price = json['price'];
    description = json['description'];
    productImage = json['productImage'];
    productCount = json['productCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productId'] = productId;
    data['productName'] = productName;
    data['price'] = price;
    data['description'] = description;
    data['productImage'] = productImage;
    data['productCount'] = productCount;
    return data;
  }
}
