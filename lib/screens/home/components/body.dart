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
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Category? category;
  Product? product;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    category = await CategoryRemote().getCat();
    product = await ProductRemote().getProduct();
  }

  @override
  Widget build(BuildContext context) {
    if (category == null || product == null) {
      getData();
    }
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const DiscountBanner(),
            category != null
                ? Categories(category!.categories)
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            product != null
                ? PopularProducts(product!.products)
                : Center(
                    child: TextButton(
                        onPressed: () async {
                          await getData();
                        },
                        child: const CircularProgressIndicator()),
                  ),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
