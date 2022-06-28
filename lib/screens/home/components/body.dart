import 'package:flutter/material.dart';
import 'package:shop_app/services/categoryRemote.dart';
import 'package:shop_app/services/productRemote.dart';

import '../../../models2/Category.dart';
import '../../../models2/product.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  Category? category;
  bool isLoaded = false;

  Product? product;
  bool isLoaded2 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    category = await CategoryRemote().getCat();
    product = await ProductRemote().getProduct();
    if (category != null) {
      setState(() {
        isLoaded = true;

      });
    }
    if (product != null) {
      setState(() {
        isLoaded2 = true;

      });
    }
    /*List<CategoryElement>? v = category!.categories;
    List<ProductElement> t = product!.products;*/

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const DiscountBanner(),
            Categories(category!.categories),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(product!.products),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
