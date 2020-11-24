import 'package:flutter/material.dart';

class SizeBox extends StatefulWidget {
  SizeBox() : super();
  @override
  _SizeBoxState createState() => _SizeBoxState();
}

class SizeDown {
  int id;
  String name;

  SizeDown(this.id, this.name);

  static List<SizeDown> getSizeBoxes() => <SizeDown>[
    SizeDown(1, 'small'),
    SizeDown(2, 'medium'),
    SizeDown(3, 'large'),
  ];
}

class _SizeBoxState extends State<SizeBox> {
//
  List<SizeDown> _sizeBoxes = SizeDown.getSizeBoxes();
  List<DropdownMenuItem<SizeDown>> _dropdownMenuItems;
  SizeDown _selectedSizeBox;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_sizeBoxes);
    _selectedSizeBox = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<SizeDown>> buildDropdownMenuItems(List carts) {
    List<DropdownMenuItem<SizeDown>> items = List();
    for(SizeDown cart in carts){
      items.add(
          DropdownMenuItem(
            value: cart,
            child: Text(cart.name),
          )
      );
    }
    return items;
  }
  onChangeDroopdownItem(SizeDown selectedSizeBox){
    setState(() {
      _selectedSizeBox = selectedSizeBox;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Size"),
          ),

          SizedBox(height: 5.0,),
          DropdownButton(
            value: _selectedSizeBox,
            items: _dropdownMenuItems,
            onChanged: onChangeDroopdownItem,
          ),

        ],
      ),
    );
  }
}