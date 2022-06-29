import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    required this.products,
  });

  List<ProductElement> products;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        products: List<ProductElement>.from(
            json["products"].map((x) => ProductElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class ProductElement {
  bool? visibleIndividually;

  String? name;

  ProductElement({
    this.visibleIndividually,
    required this.name,
    this.shortDescription,
    this.fullDescription,
    this.showOnHomePage,
    this.metaKeywords,
    this.metaDescription,
    this.metaTitle,
    this.allowCustomerReviews,
    this.approvedRatingSum,
    this.notApprovedRatingSum,
    this.approvedTotalReviews,
    this.notApprovedTotalReviews,
    this.sku,
    this.manufacturerPartNumber,
    this.gtin,
    this.isGiftCard,
    this.requireOtherProducts,
    this.automaticallyAddRequiredProducts,
    this.requiredProductIds,
    this.isDownload,
    this.unlimitedDownloads,
    this.maxNumberOfDownloads,
    this.downloadExpirationDays,
    this.hasSampleDownload,
    this.hasUserAgreement,
    this.isRecurring,
    this.recurringCycleLength,
    this.recurringTotalCycles,
    this.isRental,
    this.rentalPriceLength,
    this.isShipEnabled,
    this.isFreeShipping,
    this.shipSeparately,
    this.additionalShippingCharge,
    this.isTaxExempt,
    this.taxCategoryId,
    this.isTelecommunicationsOrBroadcastingOrElectronicServices,
    this.useMultipleWarehouses,
    this.manageInventoryMethodId,
    this.stockQuantity,
    this.displayStockAvailability,
    this.displayStockQuantity,
    this.minStockQuantity,
    this.notifyAdminForQuantityBelow,
    this.allowBackInStockSubscriptions,
    this.orderMinimumQuantity,
    this.orderMaximumQuantity,
    this.allowedQuantities,
    this.allowAddingOnlyExistingAttributeCombinations,
    this.disableBuyButton,
    this.disableWishlistButton,
    this.availableForPreOrder,
    this.preOrderAvailabilityStartDateTimeUtc,
    this.callForPrice,
    required this.price,
    this.oldPrice,
    this.productCost,
    this.specialPrice,
    this.specialPriceStartDateTimeUtc,
    this.specialPriceEndDateTimeUtc,
    this.customerEntersPrice,
    this.minimumCustomerEnteredPrice,
    this.maximumCustomerEnteredPrice,
    this.basepriceEnabled,
    this.basepriceAmount,
    this.basepriceBaseAmount,
    this.hasTierPrices,
    this.hasDiscountsApplied,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.availableStartDateTimeUtc,
    this.availableEndDateTimeUtc,
    this.displayOrder,
    this.published,
    this.deleted,
    this.createdOnUtc,
    this.updatedOnUtc,
    this.productType,
    this.parentGroupedProductId,
    this.roleIds,
    this.discountIds,
    this.storeIds,
    this.manufacturerIds,
    required this.images,
    this.attributes,
    this.productAttributeCombinations,
    this.productSpecificationAttributes,
    this.associatedProductIds,
    this.tags,
    this.vendorId,
    this.seName,
    required this.id,
  });

  String? shortDescription;
  String? fullDescription;
  bool? showOnHomePage;
  String? metaKeywords;
  String? metaDescription;
  String? metaTitle;
  bool? allowCustomerReviews;
  double? approvedRatingSum;
  double? notApprovedRatingSum;
  double? approvedTotalReviews;
  double? notApprovedTotalReviews;
  String? sku;
  String? manufacturerPartNumber;
  String? gtin;
  bool? isGiftCard;
  bool? requireOtherProducts;
  bool? automaticallyAddRequiredProducts;
  List<int>? requiredProductIds;
  bool? isDownload;
  bool? unlimitedDownloads;
  double? maxNumberOfDownloads;
  double? downloadExpirationDays;
  bool? hasSampleDownload;
  bool? hasUserAgreement;
  bool? isRecurring;
  double? recurringCycleLength;
  double? recurringTotalCycles;
  bool? isRental;
  double? rentalPriceLength;
  bool? isShipEnabled;
  bool? isFreeShipping;
  bool? shipSeparately;
  double? additionalShippingCharge;
  bool? isTaxExempt;
  double? taxCategoryId;
  bool? isTelecommunicationsOrBroadcastingOrElectronicServices;
  bool? useMultipleWarehouses;
  double? manageInventoryMethodId;
  double? stockQuantity;
  bool? displayStockAvailability;
  bool? displayStockQuantity;
  double? minStockQuantity;
  double? notifyAdminForQuantityBelow;
  bool? allowBackInStockSubscriptions;
  double? orderMinimumQuantity;
  double? orderMaximumQuantity;
  String? allowedQuantities;
  bool? allowAddingOnlyExistingAttributeCombinations;
  bool? disableBuyButton;
  bool? disableWishlistButton;
  bool? availableForPreOrder;
  DateTime? preOrderAvailabilityStartDateTimeUtc;
  bool? callForPrice;
  double? price;
  double? oldPrice;
  double? productCost;
  double? specialPrice;
  DateTime? specialPriceStartDateTimeUtc;
  DateTime? specialPriceEndDateTimeUtc;
  bool? customerEntersPrice;
  double? minimumCustomerEnteredPrice;
  double? maximumCustomerEnteredPrice;
  bool? basepriceEnabled;
  double? basepriceAmount;
  double? basepriceBaseAmount;
  bool? hasTierPrices;
  bool? hasDiscountsApplied;
  double? weight;
  double? length;
  double? width;
  double? height;
  DateTime? availableStartDateTimeUtc;
  DateTime? availableEndDateTimeUtc;
  double? displayOrder;
  bool? published;
  bool? deleted;
  DateTime? createdOnUtc;
  DateTime? updatedOnUtc;
  String? productType;
  double? parentGroupedProductId;
  List<int>? roleIds;
  List<int>? discountIds;
  List<int>? storeIds;
  List<int>? manufacturerIds;
  List<Image> images;
  List<Attribute>? attributes;
  List<ProductAttributeCombination>? productAttributeCombinations;
  List<ProductSpecificationAttribute>? productSpecificationAttributes;
  List<int>? associatedProductIds;
  List<String>? tags;
  double? vendorId;
  String? seName;
  int id;

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        visibleIndividually: json["visible_individually"] ?? true,
        name: json["name"] ?? "",
        shortDescription: json["short_description"] ?? "",
        fullDescription: json["full_description"] ?? "",
        /*showOnHomePage: json["show_on_home_page"] ?? true,
        metaKeywords: json["meta_keywords"] ?? "",
        metaDescription: json["meta_description"] ?? "",
        metaTitle: json["meta_title"] ?? "",
        allowCustomerReviews: json["allow_customer_reviews"] ?? true,
        approvedRatingSum: json["approved_rating_sum"] ?? 0,
        notApprovedRatingSum: json["not_approved_rating_sum"] ?? 0,
        approvedTotalReviews: json["approved_total_reviews"] ?? 0,
        notApprovedTotalReviews: json["not_approved_total_reviews"] ?? 0,
        sku: json["sku"] ?? "",
        manufacturerPartNumber: json["manufacturer_part_number"] ?? "",
        gtin: json["gtin"] ?? "",
        isGiftCard: json["is_gift_card"] ?? true,
        requireOtherProducts: json["require_other_products"] ?? true,
        automaticallyAddRequiredProducts:
            json["automatically_add_required_products"] ?? true,
        requiredProductIds:
            List<int>.from(json["required_product_ids"].map((x) => x)),
        isDownload: json["is_download"] ?? false,
        unlimitedDownloads: json["unlimited_downloads"] ?? false,
        maxNumberOfDownloads: json["max_number_of_downloads"] ?? 0,
        downloadExpirationDays: json["download_expiration_days"] ?? 0,
        hasSampleDownload: json["has_sample_download"] ?? false,*/
        /*hasUserAgreement: json["has_user_agreement"],
        isRecurring: json["is_recurring"],
        recurringCycleLength: json["recurring_cycle_length"],
        recurringTotalCycles: json["recurring_total_cycles"],
        isRental: json["is_rental"],
        rentalPriceLength: json["rental_price_length"],
        isShipEnabled: json["is_ship_enabled"],
        isFreeShipping: json["is_free_shipping"],
        shipSeparately: json["ship_separately"],
        additionalShippingCharge: json["additional_shipping_charge"],
        isTaxExempt: json["is_tax_exempt"],
        taxCategoryId: json["tax_category_id"],
        isTelecommunicationsOrBroadcastingOrElectronicServices: json[
            "is_telecommunications_or_broadcasting_or_electronic_services"],
        useMultipleWarehouses: json["use_multiple_warehouses"],
        manageInventoryMethodId: json["manage_inventory_method_id"],
        stockQuantity: json["stock_quantity"],
        displayStockAvailability: json["display_stock_availability"],
        displayStockQuantity: json["display_stock_quantity"],
        minStockQuantity: json["min_stock_quantity"],
        notifyAdminForQuantityBelow: json["notify_admin_for_quantity_below"],
        allowBackInStockSubscriptions:
            json["allow_back_in_stock_subscriptions"],
        orderMinimumQuantity: json["order_minimum_quantity"],
        orderMaximumQuantity: json["order_maximum_quantity"],
        allowedQuantities: json["allowed_quantities"],
        allowAddingOnlyExistingAttributeCombinations:
            json["allow_adding_only_existing_attribute_combinations"],
        disableBuyButton: json["disable_buy_button"],
        disableWishlistButton: json["disable_wishlist_button"],
        availableForPreOrder: json["available_for_pre_order"],
        preOrderAvailabilityStartDateTimeUtc:
            DateTime.parse(json["pre_order_availability_start_date_time_utc"]),
        callForPrice: json["call_for_price"],

        oldPrice: json["old_price"],
        productCost: json["product_cost"],
        specialPrice: json["special_price"],
        specialPriceStartDateTimeUtc:
            DateTime.parse(json["special_price_start_date_time_utc"]),
        specialPriceEndDateTimeUtc:
            DateTime.parse(json["special_price_end_date_time_utc"]),
        customerEntersPrice: json["customer_enters_price"],
        minimumCustomerEnteredPrice: json["minimum_customer_entered_price"],
        maximumCustomerEnteredPrice: json["maximum_customer_entered_price"],
        basepriceEnabled: json["baseprice_enabled"],
        basepriceAmount: json["baseprice_amount"],
        basepriceBaseAmount: json["baseprice_base_amount"],
        hasTierPrices: json["has_tier_prices"],
        hasDiscountsApplied: json["has_discounts_applied"],
        weight: json["weight"],
        length: json["length"],
        width: json["width"],
        height: json["height"],
        availableStartDateTimeUtc:
            DateTime.parse(json["available_start_date_time_utc"]),
        availableEndDateTimeUtc:
            DateTime.parse(json["available_end_date_time_utc"]),
        displayOrder: json["display_order"],
        published: json["published"],
        deleted: json["deleted"],
        createdOnUtc: DateTime.parse(json["created_on_utc"]),
        updatedOnUtc: DateTime.parse(json["updated_on_utc"]),
        productType: json["product_type"],
        parentGroupedProductId: json["parent_grouped_product_id"],
        roleIds: List<int>.from(json["role_ids"].map((x) => x)),
        discountIds: List<int>.from(json["discount_ids"].map((x) => x)),
        storeIds: List<int>.from(json["store_ids"].map((x) => x)),
        manufacturerIds: List<int>.from(json["manufacturer_ids"].map((x) => x)),

        attributes: List<Attribute>.from(
            json["attributes"].map((x) => Attribute.fromJson(x))),
        productAttributeCombinations: List<ProductAttributeCombination>.from(
            json["product_attribute_combinations"]
                .map((x) => ProductAttributeCombination.fromJson(x))),
        productSpecificationAttributes:
            List<ProductSpecificationAttribute>.from(
                json["product_specification_attributes"]
                    .map((x) => ProductSpecificationAttribute.fromJson(x))),
        associatedProductIds:
            List<int>.from(json["associated_product_ids"].map((x) => x)),
        tags: List<String>.from(json["tags"].map((x) => x)),
        vendorId: json["vendor_id"],*/
        seName: json["se_name"] ?? "",
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        id: json["id"] ?? 0,
        price: json["price"] ?? -1,
      );

  Map<String, dynamic> toJson() => {
        "visible_individually": visibleIndividually,
        "name": name,
        "short_description": shortDescription,
        "full_description": fullDescription,
        "show_on_home_page": showOnHomePage,
        "meta_keywords": metaKeywords,
        "meta_description": metaDescription,
        "meta_title": metaTitle,
        "allow_customer_reviews": allowCustomerReviews,
        "approved_rating_sum": approvedRatingSum,
        "not_approved_rating_sum": notApprovedRatingSum,
        "approved_total_reviews": approvedTotalReviews,
        "not_approved_total_reviews": notApprovedTotalReviews,
        "sku": sku,
        "manufacturer_part_number": manufacturerPartNumber,
        "gtin": gtin,
        "is_gift_card": isGiftCard,
        "require_other_products": requireOtherProducts,
        "automatically_add_required_products": automaticallyAddRequiredProducts,
        "required_product_ids":
            List<dynamic>.from(requiredProductIds!.map((x) => x)),
        "is_download": isDownload,
        "unlimited_downloads": unlimitedDownloads,
        "max_number_of_downloads": maxNumberOfDownloads,
        "download_expiration_days": downloadExpirationDays,
        "has_sample_download": hasSampleDownload,
        "has_user_agreement": hasUserAgreement,
        "is_recurring": isRecurring,
        "recurring_cycle_length": recurringCycleLength,
        "recurring_total_cycles": recurringTotalCycles,
        "is_rental": isRental,
        "rental_price_length": rentalPriceLength,
        "is_ship_enabled": isShipEnabled,
        "is_free_shipping": isFreeShipping,
        "ship_separately": shipSeparately,
        "additional_shipping_charge": additionalShippingCharge,
        "is_tax_exempt": isTaxExempt,
        "tax_category_id": taxCategoryId,
        "is_telecommunications_or_broadcasting_or_electronic_services":
            isTelecommunicationsOrBroadcastingOrElectronicServices,
        "use_multiple_warehouses": useMultipleWarehouses,
        "manage_inventory_method_id": manageInventoryMethodId,
        "stock_quantity": stockQuantity,
        "display_stock_availability": displayStockAvailability,
        "display_stock_quantity": displayStockQuantity,
        "min_stock_quantity": minStockQuantity,
        "notify_admin_for_quantity_below": notifyAdminForQuantityBelow,
        "allow_back_in_stock_subscriptions": allowBackInStockSubscriptions,
        "order_minimum_quantity": orderMinimumQuantity,
        "order_maximum_quantity": orderMaximumQuantity,
        "allowed_quantities": allowedQuantities,
        "allow_adding_only_existing_attribute_combinations":
            allowAddingOnlyExistingAttributeCombinations,
        "disable_buy_button": disableBuyButton,
        "disable_wishlist_button": disableWishlistButton,
        "available_for_pre_order": availableForPreOrder,
        "pre_order_availability_start_date_time_utc":
            preOrderAvailabilityStartDateTimeUtc!.toIso8601String(),
        "call_for_price": callForPrice,
        "price": price,
        "old_price": oldPrice,
        "product_cost": productCost,
        "special_price": specialPrice,
        "special_price_start_date_time_utc":
            specialPriceStartDateTimeUtc!.toIso8601String(),
        "special_price_end_date_time_utc":
            specialPriceEndDateTimeUtc!.toIso8601String(),
        "customer_enters_price": customerEntersPrice,
        "minimum_customer_entered_price": minimumCustomerEnteredPrice,
        "maximum_customer_entered_price": maximumCustomerEnteredPrice,
        "baseprice_enabled": basepriceEnabled,
        "baseprice_amount": basepriceAmount,
        "baseprice_base_amount": basepriceBaseAmount,
        "has_tier_prices": hasTierPrices,
        "has_discounts_applied": hasDiscountsApplied,
        "weight": weight,
        "length": length,
        "width": width,
        "height": height,
        "available_start_date_time_utc":
            availableStartDateTimeUtc!.toIso8601String(),
        "available_end_date_time_utc":
            availableEndDateTimeUtc!.toIso8601String(),
        "display_order": displayOrder,
        "published": published,
        "deleted": deleted,
        "created_on_utc": createdOnUtc!.toIso8601String(),
        "updated_on_utc": updatedOnUtc!.toIso8601String(),
        "product_type": productType,
        "parent_grouped_product_id": parentGroupedProductId,
        "role_ids": List<dynamic>.from(roleIds!.map((x) => x)),
        "discount_ids": List<dynamic>.from(discountIds!.map((x) => x)),
        "store_ids": List<dynamic>.from(storeIds!.map((x) => x)),
        "manufacturer_ids": List<dynamic>.from(manufacturerIds!.map((x) => x)),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "attributes": List<dynamic>.from(attributes!.map((x) => x.toJson())),
        "product_attribute_combinations": List<dynamic>.from(
            productAttributeCombinations!.map((x) => x.toJson())),
        "product_specification_attributes": List<dynamic>.from(
            productSpecificationAttributes!.map((x) => x.toJson())),
        "associated_product_ids":
            List<dynamic>.from(associatedProductIds!.map((x) => x)),
        "tags": List<dynamic>.from(tags!.map((x) => x)),
        "vendor_id": vendorId,
        "se_name": seName,
        "id": id,
      };
}

class Attribute {
  Attribute({
    this.productAttributeId,
    this.productAttributeName,
    this.textPrompt,
    this.isRequired,
    this.attributeControlTypeId,
    this.displayOrder,
    this.defaultValue,
    this.attributeControlTypeName,
    this.attributeValues,
    this.id,
  });

  double? productAttributeId;
  String? productAttributeName;
  String? textPrompt;
  bool? isRequired;
  double? attributeControlTypeId;
  double? displayOrder;
  String? defaultValue;
  String? attributeControlTypeName;
  List<AttributeValue>? attributeValues;
  double? id;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        productAttributeId: json["product_attribute_id"] ?? -1,
        productAttributeName: json["product_attribute_name"] ?? "",
        textPrompt: json["text_prompt"] ?? "",
        isRequired: json["is_required"] ?? false,
        attributeControlTypeId: json["attribute_control_type_id"] ?? -1,
        displayOrder: json["display_order"] ?? -1,
        defaultValue: json["default_value"] ?? "",
        attributeControlTypeName: json["attribute_control_type_name"],
        attributeValues: List<AttributeValue>.from(
            json["attribute_values"].map((x) => AttributeValue.fromJson(x))),
        id: json["id"] ?? -1,
      );

  Map<String, dynamic> toJson() => {
        "product_attribute_id": productAttributeId,
        "product_attribute_name": productAttributeName,
        "text_prompt": textPrompt,
        "is_required": isRequired,
        "attribute_control_type_id": attributeControlTypeId,
        "display_order": displayOrder,
        "default_value": defaultValue,
        "attribute_control_type_name": attributeControlTypeName,
        "attribute_values":
            List<dynamic>.from(attributeValues!.map((x) => x.toJson())),
        "id": id,
      };
}

class AttributeValue {
  AttributeValue({
    this.typeId,
    this.associatedProductId,
    this.name,
    this.colorSquaresRgb,
    this.imageSquaresImage,
    this.priceAdjustment,
    this.weightAdjustment,
    this.cost,
    this.quantity,
    this.isPreSelected,
    this.displayOrder,
    this.productImageId,
    this.type,
    this.id,
  });

  double? typeId;
  double? associatedProductId;
  String? name;
  String? colorSquaresRgb;
  ImageSquaresImage? imageSquaresImage;
  double? priceAdjustment;
  double? weightAdjustment;
  double? cost;
  double? quantity;
  bool? isPreSelected;
  double? displayOrder;
  double? productImageId;
  String? type;
  double? id;

  factory AttributeValue.fromJson(Map<String, dynamic> json) => AttributeValue(
        typeId: json["type_id"] ?? -1,
        associatedProductId: json["associated_product_id"] ?? -1,
        name: json["name"] ?? "",
        colorSquaresRgb: json["color_squares_rgb"] ?? "",
        imageSquaresImage:
            ImageSquaresImage.fromJson(json["image_squares_image"]),
        priceAdjustment: json["price_adjustment"] ?? -1,
        weightAdjustment: json["weight_adjustment"] ?? -1,
        cost: json["cost"] ?? -1,
        quantity: json["quantity"] ?? 0,
        isPreSelected: json["is_pre_selected"] ?? false,
        displayOrder: json["display_order"] ?? -1,
        productImageId: json["product_image_id"] ?? 0,
        type: json["type"] ?? "",
        id: json["id"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "type_id": typeId,
        "associated_product_id": associatedProductId,
        "name": name,
        "color_squares_rgb": colorSquaresRgb,
        "image_squares_image": imageSquaresImage!.toJson(),
        "price_adjustment": priceAdjustment,
        "weight_adjustment": weightAdjustment,
        "cost": cost,
        "quantity": quantity,
        "is_pre_selected": isPreSelected,
        "display_order": displayOrder,
        "product_image_id": productImageId,
        "type": type,
        "id": id,
      };
}

class ImageSquaresImage {
  ImageSquaresImage({
    this.src,
    this.attachment,
  });

  String? src;
  String? attachment;

  factory ImageSquaresImage.fromJson(Map<String, dynamic> json) =>
      ImageSquaresImage(
        src: json["src"] ?? "",
        attachment: json["attachment"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "src": src,
        "attachment": attachment,
      };
}

class Image {
  Image({
    this.id,
    this.pictureId,
    this.position,
    this.src,
    this.attachment,
  });

  double? id;
  double? pictureId;
  double? position;
  String? src;
  String? attachment;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"] ?? 0,
        pictureId: json["picture_id"] ?? 0,
        position: json["position"] ?? 0,
        src: json["src"] ?? "",
        attachment: json["attachment"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "picture_id": pictureId,
        "position": position,
        "src": src,
        "attachment": attachment,
      };
}

class ProductAttributeCombination {
  ProductAttributeCombination({
    this.productId,
    this.attributesXml,
    this.stockQuantity,
    this.sku,
    this.manufacturerPartNumber,
    this.gtin,
    this.overriddenPrice,
    this.pictureId,
    this.id,
  });

  double? productId;
  String? attributesXml;
  double? stockQuantity;
  String? sku;
  String? manufacturerPartNumber;
  String? gtin;
  double? overriddenPrice;
  double? pictureId;
  double? id;

  factory ProductAttributeCombination.fromJson(Map<String, dynamic> json) =>
      ProductAttributeCombination(
        productId: json["product_id"] ?? 0,
        attributesXml: json["attributes_xml"] ?? "",
        stockQuantity: json["stock_quantity"] ?? "",
        sku: json["sku"] ?? "",
        manufacturerPartNumber: json["manufacturer_part_number"] ?? "",
        gtin: json["gtin"] ?? "",
        overriddenPrice: json["overridden_price"] ?? "",
        pictureId: json["picture_id"] ?? 0,
        id: json["id"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "attributes_xml": attributesXml,
        "stock_quantity": stockQuantity,
        "sku": sku,
        "manufacturer_part_number": manufacturerPartNumber,
        "gtin": gtin,
        "overridden_price": overriddenPrice,
        "picture_id": pictureId,
        "id": id,
      };
}

class ProductSpecificationAttribute {
  ProductSpecificationAttribute({
    this.productId,
    this.attributeTypeId,
    this.specificationAttributeOptionId,
    this.customValue,
    this.allowFiltering,
    this.showOnProductPage,
    this.displayOrder,
    this.attributeType,
    this.specificationAttributeOption,
    this.id,
  });

  double? productId;
  double? attributeTypeId;
  double? specificationAttributeOptionId;
  String? customValue;
  bool? allowFiltering;
  bool? showOnProductPage;
  double? displayOrder;
  String? attributeType;
  SpecificationAttributeOption? specificationAttributeOption;
  double? id;

  factory ProductSpecificationAttribute.fromJson(Map<String, dynamic> json) =>
      ProductSpecificationAttribute(
        productId: json["product_id"] ?? 0,
        attributeTypeId: json["attribute_type_id"] ?? 0,
        specificationAttributeOptionId:
            json["specification_attribute_option_id"] ?? "",
        customValue: json["custom_value"] ?? "",
        allowFiltering: json["allow_filtering"] ?? "",
        showOnProductPage: json["show_on_product_page"] ?? "",
        displayOrder: json["display_order"] ?? "",
        attributeType: json["attribute_type"] ?? "",
        specificationAttributeOption: SpecificationAttributeOption.fromJson(
            json["specification_attribute_option"]),
        id: json["id"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "attribute_type_id": attributeTypeId,
        "specification_attribute_option_id": specificationAttributeOptionId,
        "custom_value": customValue,
        "allow_filtering": allowFiltering,
        "show_on_product_page": showOnProductPage,
        "display_order": displayOrder,
        "attribute_type": attributeType,
        "specification_attribute_option":
            specificationAttributeOption!.toJson(),
        "id": id,
      };
}

class SpecificationAttributeOption {
  SpecificationAttributeOption({
    this.specificationAttributeId,
    this.name,
    this.colorSquaresRgb,
    this.displayOrder,
    this.id,
  });

  double? specificationAttributeId;
  String? name;
  String? colorSquaresRgb;
  double? displayOrder;
  double? id;

  factory SpecificationAttributeOption.fromJson(Map<String, dynamic> json) =>
      SpecificationAttributeOption(
        specificationAttributeId: json["specification_attribute_id"] ?? "",
        name: json["name"] ?? "",
        colorSquaresRgb: json["color_squares_rgb"] ?? "",
        displayOrder: json["display_order"] ?? "",
        id: json["id"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "specification_attribute_id": specificationAttributeId,
        "name": name,
        "color_squares_rgb": colorSquaresRgb,
        "display_order": displayOrder,
        "id": id,
      };
}
