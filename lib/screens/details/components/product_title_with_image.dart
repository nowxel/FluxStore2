import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
              children: <Widget>[
                SizedBox(width: 8.0,),
                Expanded(
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),

              ]
          ),
          Text(product.title,
            style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          RichText(
              text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ]
              )
          ),
        ],
      ),
    );
  }
}
