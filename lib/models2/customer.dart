import 'dart:convert';

Customer customerFromJson(String str) => Customer.fromJson(json.decode(str));

String customerToJson(Customer data) => json.encode(data.toJson());

class Customer {
  Customer({
    this.customers,
  });

  List<CustomerElement>? customers;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        customers: List<CustomerElement>.from(
            json["customers"].map((x) => CustomerElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "customers": List<dynamic>.from(customers!.map((x) => x.toJson())),
      };
}

class CustomerElement {
  CustomerElement({
    this.billingAddress,
    this.shippingAddress,
    this.addresses,
    this.customerGuid,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.languageId,
    this.currencyId,
    this.dateOfBirth,
    this.gender,
    this.adminComment,
    this.isTaxExempt,
    this.hasShoppingCartItems,
    this.active,
    this.deleted,
    this.isSystemAccount,
    this.systemName,
    this.lastIpAddress,
    this.createdOnUtc,
    this.lastLoginDateUtc,
    this.lastActivityDateUtc,
    this.registeredInStoreId,
    this.subscribedToNewsletter,
    this.vatNumber,
    this.vatNumberStatusId,
    this.euCookieLawAccepted,
    this.company,
    this.roleIds,
    this.id,
  });

  Address? billingAddress;
  Address? shippingAddress;
  List<Address>? addresses;
  String? customerGuid;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  int? languageId;
  int? currencyId;
  DateTime? dateOfBirth;
  String? gender;
  String? adminComment;
  bool? isTaxExempt;
  bool? hasShoppingCartItems;
  bool? active;
  bool? deleted;
  bool? isSystemAccount;
  String? systemName;
  String? lastIpAddress;
  DateTime? createdOnUtc;
  DateTime? lastLoginDateUtc;
  DateTime? lastActivityDateUtc;
  int? registeredInStoreId;
  bool? subscribedToNewsletter;
  String? vatNumber;
  int? vatNumberStatusId;
  bool? euCookieLawAccepted;
  String? company;
  List<int>? roleIds;
  int? id;

  factory CustomerElement.fromJson(Map<String, dynamic> json) =>
      CustomerElement(
        /*billingAddress: Address.fromJson(json["billing_address"]),
        shippingAddress: Address.fromJson(json["shipping_address"]),
        addresses: List<Address>.from(
            json["addresses"].map((x) => Address.fromJson(x))),
        customerGuid: json["customer_guid"] ?? "",
        username: json["username"] ?? "",*/
        email: json["email"] ?? "",
        /*firstName: json["first_name"] ?? "",
        lastName: json["last_name"] ?? "",
        languageId: json["language_id"] ?? -1,
        currencyId: json["currency_id"] ?? -1,
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        gender: json["gender"] ?? "",
        adminComment: json["admin_comment"] ?? "",
        isTaxExempt: json["is_tax_exempt"] ?? false,
        hasShoppingCartItems: json["has_shopping_cart_items"] ?? false,
        active: json["active"] ?? false,
        deleted: json["deleted"] ?? false,
        isSystemAccount: json["is_system_account"] ?? false,
        systemName: json["system_name"] ?? "",
        lastIpAddress: json["last_ip_address"] ?? "",
        createdOnUtc: DateTime.parse(json["created_on_utc"]),
        lastLoginDateUtc: DateTime.parse(json["last_login_date_utc"]),
        lastActivityDateUtc: DateTime.parse(json["last_activity_date_utc"]),
        registeredInStoreId: json["registered_in_store_id"] ?? -1,
        subscribedToNewsletter: json["subscribed_to_newsletter"] ?? false,
        vatNumber: json["vat_number"] ?? "",
        vatNumberStatusId: json["vat_number_status_id"] ?? -1,
        euCookieLawAccepted: json["eu_cookie_law_accepted"] ?? false,
        company: json["company"] ?? "",
        roleIds: List<int>.from(json["role_ids"].map((x) => x)),*/
        id: json["id"] ?? -1,
      );

  Map<String, dynamic> toJson() => {
        "billing_address": billingAddress!.toJson(),
        "shipping_address": shippingAddress!.toJson(),
        "addresses": List<dynamic>.from(addresses!.map((x) => x.toJson())),
        "customer_guid": customerGuid,
        "username": username,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "language_id": languageId,
        "currency_id": currencyId,
        "date_of_birth": dateOfBirth!.toIso8601String(),
        "gender": gender,
        "admin_comment": adminComment,
        "is_tax_exempt": isTaxExempt,
        "has_shopping_cart_items": hasShoppingCartItems,
        "active": active,
        "deleted": deleted,
        "is_system_account": isSystemAccount,
        "system_name": systemName,
        "last_ip_address": lastIpAddress,
        "created_on_utc": createdOnUtc!.toIso8601String(),
        "last_login_date_utc": lastLoginDateUtc!.toIso8601String(),
        "last_activity_date_utc": lastActivityDateUtc!.toIso8601String(),
        "registered_in_store_id": registeredInStoreId,
        "subscribed_to_newsletter": subscribedToNewsletter,
        "vat_number": vatNumber,
        "vat_number_status_id": vatNumberStatusId,
        "eu_cookie_law_accepted": euCookieLawAccepted,
        "company": company,
        "role_ids": List<dynamic>.from(roleIds!.map((x) => x)),
        "id": id,
      };
}

class Address {
  Address({
    this.firstName,
    this.lastName,
    this.email,
    this.company,
    this.countryId,
    this.country,
    this.stateProvinceId,
    this.city,
    this.address1,
    this.address2,
    this.zipPostalCode,
    this.phoneNumber,
    this.faxNumber,
    this.customerAttributes,
    this.createdOnUtc,
    this.province,
    this.id,
  });

  String? firstName;
  String? lastName;
  String? email;
  String? company;
  int? countryId;
  String? country;
  int? stateProvinceId;
  String? city;
  String? address1;
  String? address2;
  String? zipPostalCode;
  String? phoneNumber;
  String? faxNumber;
  String? customerAttributes;
  DateTime? createdOnUtc;
  String? province;
  int? id;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        firstName: json["first_name"] ?? "",
        lastName: json["last_name"] ?? "",
        email: json["email"] ?? "",
        /*company: json["company"] ?? "",
        countryId: json["country_id"] ?? -1,
        country: json["country"] ?? "",
        stateProvinceId: json["state_province_id"] ?? -1,
        city: json["city"] ?? "",
        address1: json["address1"] ?? "",
        address2: json["address2"] ?? "",
        zipPostalCode: json["zip_postal_code"] ?? "",
        phoneNumber: json["phone_number"] ?? "",
        faxNumber: json["fax_number"] ?? "",
        customerAttributes: json["customer_attributes"] ?? "",
        createdOnUtc: DateTime.parse(json["created_on_utc"]),
        province: json["province"] ?? "",*/
        id: json["id"] ?? -1,
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "company": company,
        "country_id": countryId,
        "country": country,
        "state_province_id": stateProvinceId,
        "city": city,
        "address1": address1,
        "address2": address2,
        "zip_postal_code": zipPostalCode,
        "phone_number": phoneNumber,
        "fax_number": faxNumber,
        "customer_attributes": customerAttributes,
        "created_on_utc": createdOnUtc!.toIso8601String(),
        "province": province,
        "id": id,
      };
}
