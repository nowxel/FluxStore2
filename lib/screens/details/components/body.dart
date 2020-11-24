import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';
import 'package:flutter_app/screens/details/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'color_and_size.dart';
import 'description.dart';
import 'size_box.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(

      child: Column(children: <Widget>[
        ProductTitleWithImage(product: product),
        SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(

                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ColorAndSize(product: product),
                    ),
                    Row(
                      children: [
                        AddToCart(),
                        CartCounter(),
                      ],
                    ),
                    Description(product: product),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Product Code:  578902-00",

                                style: TextStyle(height: 1.5),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Category: ",

                                style: TextStyle(height: 1.5),
                              ),
                              Text(
                                "Sweaters",

                                style: TextStyle(
                                  color: Colors.green[400],
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Material:  Cotton",

                                style: TextStyle(height: 1.5),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Country:  Germany",

                                style: TextStyle(height: 1.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),

      ],
          )
        );
  }
}





