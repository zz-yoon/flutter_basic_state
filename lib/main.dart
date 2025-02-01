import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  void _onClick() {
    print(" 처음 : $count");
    setState(() {
      print("setState1 : $count");
      count += 1;
      print("setState2 : $count");
    });
    //count += 1;
    print(" N번쨰 : $count");
  }

  @override
  Widget build(BuildContext context) {
    print("build() 실행됨, count 값: $count");
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Click count",
                ),
                Text(
                  "$count",
                ),
                IconButton(
                  iconSize: 40,
                  onPressed: _onClick,
                  icon: Icon(
                    Icons.add_box_rounded,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
