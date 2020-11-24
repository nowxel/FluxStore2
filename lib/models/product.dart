import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
});

}

List<Product> products = [
  Product(
    id: 1,
    title: "Scaridian Dress",
    price: 50,
    size: 12,
    description: "The Karissa V-Neck Tee features a semi-fitted shape that's flattering for every figure. You can hit the gym with confidence while it hugs curves and hides common 'problem' areas. Find stunning women's cocktail dresses and party dresses.",
    image: "assets/images/image1.png",
    color: Color(0xFFFEF9EB),
  ),
  Product(
    id: 2,
    title: "Wool Dress",
    price: 100,
    size: 12,
    description: "dummyText",
    image: "assets/images/image2.png",
    color: Color(0xFFFEF9EB),
  ),
  Product(
    id: 3,
    title: "Cream cotton Dress",
    price: 50,
    size: 12,
    description: "dummyText",
    image: "assets/images/image3.png",
    color: Color(0xFFFEF9EB),
  ),
  Product(
    id: 4,
    title: "Black Dress",
    price: 50,
    size: 12,
    description: "dummyText",
    image: "assets/images/image4.png",
    color: Color(0xFFFEF9EB),
  ),
  Product(
    id: 5,
    title: "Cream cotton Dress",
    price: 50,
    size: 12,
    description: "dummyText",
    image: "assets/images/image1.png",
    color: Color(0xFFFEF9EB),
  ),
  Product(
    id: 6,
    title: "Black Dress",
    price: 50,
    size: 12,
    description: "dummyText",
    image: "assets/images/image2.png",
    color: Color(0xFFFEF9EB)
  ),

];