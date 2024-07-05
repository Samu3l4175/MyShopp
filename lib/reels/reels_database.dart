import 'package:flutter/material.dart';
import 'package:myshopp/reels/reels_thumbernail.dart';
import 'dart:math' as math;

//REELS DATABASE

int getRandomInt() {
  //gets random integer
  return math.Random().nextInt(10) + 1;
}

double getRandomDouble() {
  //gets random double
  return math.Random().nextDouble() * 50.00;
}

List<ReelsThumbernail> database = [
  ReelsThumbernail(
    thumbernailImage:
        AssetImage('assets/images/test${getRandomInt().toString()}.jpg'),
    title: 'Prova',
  ),
  ReelsThumbernail(
    thumbernailImage:
        AssetImage('assets/images/test${getRandomInt().toString()}.jpg'),
    title: 'Prova',
  ),
  ReelsThumbernail(
    thumbernailImage:
        AssetImage('assets/images/test${getRandomInt().toString()}.jpg'),
    title: 'Prova',
  ),
  ReelsThumbernail(
    thumbernailImage:
        AssetImage('assets/images/test${getRandomInt().toString()}.jpg'),
    title: 'Prova',
  ),
  ReelsThumbernail(
    thumbernailImage:
        AssetImage('assets/images/test${getRandomInt().toString()}.jpg'),
    title: 'Prova',
  ),
];
