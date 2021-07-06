import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i1.wp.com/zeeoii.com/wp-content/uploads/2020/08/AMOLED-Mobile-Full-HD-Wallpaper-1080X2340-17.jpg?resize=945%2C2048&ssl=1"),
                  fit: BoxFit.fill,
                ),
              ),
              margin: const EdgeInsets.only(left: 35.0, right: 35.0),
              child: Center(
                child: randomquote(),
              ),
            )));
  }
}

randomquote() {
  var list = [
    'The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela',
    'work like a dog live like a king',
    'The way to get started is to quit talking and begin doing. -Walt Disney',
    'If life were predictable it would cease to be life, and be without flavor. -Eleanor Roosevelt',
    'If you look at what you have in life, you\'ll always have more. If you look at what you don\'t have in life, you\'ll never have enough. -Oprah Winfrey'
  ];
  final _random = new Random();

  var element = list[_random.nextInt(list.length)];
  return (Text(element, style: TextStyle(color: Colors.white)));
}