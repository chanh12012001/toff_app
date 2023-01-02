class CartProductModel {
  final String imageUrl;
  final String productName;
  final String price;

  const CartProductModel({
    required this.imageUrl,
    required this.productName,
    required this.price,
  });
}

final cartProducts = <CartProductModel>[
  const CartProductModel(
    imageUrl:
        "https://global-uploads.webflow.com/6256995755a7ea0a3d8fbd11/62bb4550f2cbdb187c83d311_Img-7.jpg",
    productName: "Black shirt with jecket",
    price: "\$500",
  ),
  const CartProductModel(
    imageUrl:
        "https://media.istockphoto.com/id/1212499343/photo/lady-girls-long-sleeve-rib-pattern-pink-sweatshirt-isolated-on-white-front-view-of-modern.jpg?s=1024x1024&w=is&k=20&c=kyz806IvXAO31PpGeRD4efjPg7-xweJtuEzaT6jAlRg=",
    productName: "Yellow white shirt",
    price: "\$500",
  ),
  const CartProductModel(
    imageUrl:
        "https://global-uploads.webflow.com/6256995755a7ea0a3d8fbd11/62bb4550f2cbdb187c83d311_Img-7.jpg",
    productName: "Nike Black shoes !",
    price: "\$500",
  ),
];
