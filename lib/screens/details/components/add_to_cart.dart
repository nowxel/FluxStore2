import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            child: FlatButton(
              height: 50,
              minWidth: 270,
              color: Colors.green[400],
              onPressed: () {},
              child: Text(
                  "ADD TO CART",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}