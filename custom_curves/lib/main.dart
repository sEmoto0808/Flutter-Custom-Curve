import 'package:custom_curves/custom_clipper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CurvePage(),
    );
  }
}

class CurvePage extends StatelessWidget {
  const CurvePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: BigClipper(),
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),
          ClipPath(
            clipper: SmallClipper(),
            child: Container(
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
