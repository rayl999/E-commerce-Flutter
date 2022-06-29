import 'dart:convert';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

String categoryToJson(Category data) => json.encode(data.toJson());

class Category {
  Category({
    this.categories,
  });

  List<CategoryElement>? categories;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        categories: List<CategoryElement>.from(
            json["categories"].map((x) => CategoryElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories!.map((x) => x.toJson())),
      };
}

class CategoryElement {
  CategoryElement({
    this.name,
    this.description,
    this.categoryTemplateId,
    this.metaKeywords,
    this.metaDescription,
    this.metaTitle,
    this.parentCategoryId,
    this.pageSize,
    this.pageSizeOptions,
    this.priceRanges,
    this.showOnHomePage,
    this.includeInTopMenu,
    this.hasDiscountsApplied,
    this.published,
    this.deleted,
    this.displayOrder,
    this.createdOnUtc,
    this.updatedOnUtc,
    this.roleIds,
    this.discountIds,
    this.storeIds,
    this.image,
    this.seName,
    required this.id,
  });

  String? name;
  String? description;
  int? categoryTemplateId;
  String? metaKeywords;
  String? metaDescription;
  String? metaTitle;
  int? parentCategoryId;
  int? pageSize;
  String? pageSizeOptions;
  String? priceRanges;
  bool? showOnHomePage;
  bool? includeInTopMenu;
  bool? hasDiscountsApplied;
  bool? published;
  bool? deleted;
  int? displayOrder;
  DateTime? createdOnUtc;
  DateTime? updatedOnUtc;
  List<int>? roleIds;
  List<int>? discountIds;
  List<int>? storeIds;
  Image? image;
  String? seName;
  int? id;

  factory CategoryElement.fromJson(Map<String, dynamic> json) =>
      CategoryElement(
        name: json["name"] ?? "",
        description: json["description"] ?? "",
        /*categoryTemplateId: json["category_template_id"] ?? 0,
        metaKeywords: json["meta_keywords"] ?? "",
        metaDescription: json["meta_description"] ?? "",
        metaTitle: json["meta_title"] ?? "",
        parentCategoryId: json["parent_category_id"] ?? 0,
        pageSize: json["page_size"] ?? 0,
        pageSizeOptions: json["page_size_options"] ?? "",
        priceRanges: json["price_ranges"] ?? "",
        showOnHomePage: json["show_on_home_page"] ?? true,
        includeInTopMenu: json["include_in_top_menu"] ?? true,
        hasDiscountsApplied: json["has_discounts_applied"] ?? true,
        published: json["published"] ?? true,
        deleted: json["deleted"] ?? false,
        displayOrder: json["display_order"] ?? -1,
        createdOnUtc: DateTime.parse(json["created_on_utc"]) ?? DateTime(2022),
        updatedOnUtc: DateTime.parse(json["updated_on_utc"]) ?? DateTime(2022),
        roleIds: List<int>.from(json["role_ids"].map((x) => x)),
        discountIds: List<int>.from(json["discount_ids"].map((x) => x)),
        storeIds: List<int>.from(json["store_ids"].map((x) => x)),*/
        image: Image.fromJson(json["image"])??Image(src: "",attachment: ""),
        seName: json["se_name"] ?? "",
        id: json["id"]??-1,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "category_template_id": categoryTemplateId,
        "meta_keywords": metaKeywords,
        "meta_description": metaDescription,
        "meta_title": metaTitle,
        "parent_category_id": parentCategoryId,
        "page_size": pageSize,
        "page_size_options": pageSizeOptions,
        "price_ranges": priceRanges,
        "show_on_home_page": showOnHomePage,
        "include_in_top_menu": includeInTopMenu,
        "has_discounts_applied": hasDiscountsApplied,
        "published": published,
        "deleted": deleted,
        "display_order": displayOrder,
        "created_on_utc": createdOnUtc!.toIso8601String(),
        "updated_on_utc": updatedOnUtc!.toIso8601String(),
        "role_ids": List<dynamic>.from(roleIds!.map((x) => x)),
        "discount_ids": List<dynamic>.from(discountIds!.map((x) => x)),
        "store_ids": List<dynamic>.from(storeIds!.map((x) => x)),
        "image": image!.toJson(),
        "se_name": seName,
        "id": id,
      };
}

class Image {
  Image({
    this.src,
    this.attachment,
  });

  String? src;
  String? attachment;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        src: json["src"] ?? "",
        attachment: json["attachment"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "src": src,
        "attachment": attachment,
      };
}
