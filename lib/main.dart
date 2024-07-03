import 'package:myshopp/home.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: const Home(),
      theme: ThemeData().copyWith(primaryColor: Colors.red),
    ),
  );
}
