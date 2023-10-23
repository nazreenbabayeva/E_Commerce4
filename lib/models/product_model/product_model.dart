import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
    String image;
    String id;
    String name;
    String price;
    String description;
    String status;
    bool isFavourite;
    int? qty;

    ProductModel({
        required this.image,
        required this.id,
        required this.name,
        required this.price,
        required this.description,
        required this.status,
        required this.isFavourite,
        this.qty,
    });

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        price: json["price"],
        status: json["status"],
        qty: json["qty"],
        isFavourite: false,
        
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "description": description,
        "isFavourite": isFavourite,
        "price": price,
        "status": status,
        "qty": qty,
    };


      @override
  ProductModel copyWith({
   int? qty,
  }) =>
      ProductModel(
        id: id,
        name: name,
        description: description,
        image: image,
        price: price,
        status: status,
        qty: qty ?? this.qty,
        isFavourite: isFavourite,
      );
}
