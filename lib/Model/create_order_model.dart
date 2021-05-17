// To parse this JSON data, do
//
//     final createOrderModel = createOrderModelFromJson(jsonString);

import 'dart:convert';

CreateOrderModel createOrderModelFromJson(String str) => CreateOrderModel.fromJson(json.decode(str));

String createOrderModelToJson(CreateOrderModel data) => json.encode(data.toJson());

class CreateOrderModel {
  CreateOrderModel({
    this.shippingArea,
    this.shippingContact,
    this.shippingAppartment,
    this.shippingHouse,
    this.shippingRoad,
    this.shippingCity,
    this.shippingDistrict,
    this.shippingZipCode,
    this.userId,
    this.product,
  });

  String shippingArea;
  String shippingContact;
  String shippingAppartment;
  String shippingHouse;
  String shippingRoad;
  String shippingCity;
  String shippingDistrict;
  String shippingZipCode;
  String userId;
  List<Product> product;

  factory CreateOrderModel.fromJson(Map<String, dynamic> json) => CreateOrderModel(
    shippingArea: json["shipping_area"],
    shippingContact: json["shipping_contact"],
    shippingAppartment: json["shipping_appartment"],
    shippingHouse: json["shipping_house"],
    shippingRoad: json["shipping_road"],
    shippingCity: json["shipping_city"],
    shippingDistrict: json["shipping_district"],
    shippingZipCode: json["shipping_zip_code"],
    userId: json["user_id"],
    product: List<Product>.from(json["product"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "shipping_area": shippingArea,
    "shipping_contact": shippingContact,
    "shipping_appartment": shippingAppartment,
    "shipping_house": shippingHouse,
    "shipping_road": shippingRoad,
    "shipping_city": shippingCity,
    "shipping_district": shippingDistrict,
    "shipping_zip_code": shippingZipCode,
    "user_id": userId,
    "product": List<dynamic>.from(product.map((x) => x.toJson())),
  };
}

class Product {
  Product({
    this.productId,
    this.quantity,
    this.price,
  });

  String productId;
  String quantity;
  String price;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    productId: json["product_id"],
    quantity: json["quantity"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "quantity": quantity,
    "price": price,
  };
}
