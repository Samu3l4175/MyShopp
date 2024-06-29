import 'package:flutter/material.dart';

List<Scaffold> stories = [
  Scaffold(
    body: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/test.jpg'),
            ),
          ),
        ),
        Text('TEST')
      ],
    ),
  ),
  Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://i.pinimg.com/originals/2e/c6/b5/2ec6b5e14fe0cba0cb0aa5d2caeeccc6.jpg",
          ),
        ),
      ),
    ),
  ),
];
