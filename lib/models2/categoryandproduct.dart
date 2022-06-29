// To parse this JSON data, do
//
//     final categoryandproduct = categoryandproductFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Categoryandproduct categoryandproductFromJson(String str) =>
    Categoryandproduct.fromJson(json.decode(str));

String categoryandproductToJson(Categoryandproduct data) =>
    json.encode(data.toJson());

class Categoryandproduct {
  Categoryandproduct({
    this.productCategoryMappings,
  });

  List<ProductCategoryMapping>? productCategoryMappings;

  factory Categoryandproduct.fromJson(Map<String, dynamic> json) =>
      Categoryandproduct(
        productCategoryMappings: List<ProductCategoryMapping>.from(
            json["product_category_mappings"]
                .map((x) => ProductCategoryMapping.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "product_category_mappings":
            List<dynamic>.from(productCategoryMappings!.map((x) => x.toJson())),
      };
}

class ProductCategoryMapping {
  ProductCategoryMapping({
    this.productId,
    this.categoryId,
    this.isFeaturedProduct,
    this.displayOrder,
    this.id,
  });

  int? productId;
  int? categoryId;
  bool? isFeaturedProduct;
  int? displayOrder;
  int? id;

  factory ProductCategoryMapping.fromJson(Map<String, dynamic> json) =>
      ProductCategoryMapping(
        productId: json["product_id"] ?? -1,
        categoryId: json["category_id"] ?? -1,
        isFeaturedProduct: json["is_featured_product"] ?? false,
        displayOrder: json["display_order"] ?? 0,
        id: json["id"] ?? -1,
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "category_id": categoryId,
        "is_featured_product": isFeaturedProduct,
        "display_order": displayOrder,
        "id": id,
      };
}
