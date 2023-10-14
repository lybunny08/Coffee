import 'package:flutter/material.dart';

class Product {
  final String image, title, description, rate;
  final int price, id;
  Product({
    required this.id,
    required this.description,
    required this.image,
    required this.price,
    required this.title,
    required this.rate,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Caramel Latte",
    price: 22500,
    description: "Custommizable",
    image: "image/caramellatte.jpg",
    rate: '4.7',
  ),
  Product(
    id: 2,
    title: "Vanilla Latte",
    price: 20000,
    description: "Custommizable",
    image: "image/vanillalate.jpg",
    rate: '3.8',
  ),
  Product(
    id: 1,
    title: "Flat White",
    price: 10000,
    description: "Custommizable",
    image: "image/cafeaulait.jpg",
    rate: '4.7',
  ),
  Product(
    id: 1,
    title: "Espresso",
    price: 15000,
    description: "Custommizable",
    image: "image/cafenoisette.jpg",
    rate: '4.5',
  ),
  Product(
    id: 1,
    title: "Cappuchino",
    price: 25000,
    description: "Custommizable",
    image: "image/daniel-stuben-7RzeVpUHiEY-unsplash.jpg",
    rate: '4.7',
  ),
];
