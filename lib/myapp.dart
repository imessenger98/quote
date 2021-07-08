import 'package:flutter/material.dart';
import "dart:math";

randomquote(n) {
  final _random = new Random();

  var element = _random.nextInt(n);
  print(element);
  return element;
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var lst = [
    'The greatest glory in living lies not in never falling, but in rising every time we fall. \n\n-Nelson Mandela',
    'Work like a dog live like a king',
    'The way to get started is to quit talking and begin doing. \n\n-Walt Disney',
    'If life were predictable it would cease to be life, and be without flavor. \n\n-Eleanor Roosevelt',
    'If you look at what you have in life, you\'ll always have more. If you look at what you don\'t have in life, you\'ll never have enough. \n\n-Oprah Winfrey'
  ];
  var a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            a = randomquote(lst.length);
          });
        },
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i1.wp.com/zeeoii.com/wp-content/uploads/2020/08/AMOLED-Mobile-Full-HD-Wallpaper-1080X2340-17.jpg?resize=945%2C2048&ssl=1"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            lst[a],
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
              fontFamily: "TitilliumWeb-Regular",
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
