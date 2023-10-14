import 'package:flutter/material.dart';

class Offres {
  final String image, title, description, rate;
  final int price, id;
  Offres({
    required this.id,
    required this.description,
    required this.image,
    required this.price,
    required this.title,
    required this.rate,
  });
}

List<Offres> offres = [
  Offres(
    id: 1,
    title: "Expresso Macchiato",
    price: 1000,
    description: "Custommizable",
    image: "image/expresoomachiato.jpg",
    rate: '4.7',
  ),
  Offres(
    id: 2,
    title: "Cappuchino",
    price: 5000,
    description: "Custommizable",
    image: "image/cafecreme.jpg",
    rate: '3.8',
  ),
  Offres(
    id: 1,
    title: "Mocha",
    price: 1000,
    description: "Custommizable",
    image: "image/coffee3.jpg",
    rate: '4.7',
  ),
  Offres(
    id: 1,
    title: "Cappuchino",
    price: 1000,
    description: "Custommizable",
    image: "image/coffee1.jpg",
    rate: '4.5',
  ),
  Offres(
    id: 1,
    title: "Mocha",
    price: 1500,
    description: "Custommizable",
    image: "image/coffee2.jpg",
    rate: '4.7',
  ),
];
