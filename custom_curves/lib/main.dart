import 'package:custom_curves/clip_shadow_path.dart';
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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ClipShadowPath(
            shadow: const BoxShadow(
              color: Colors.black45,
              offset: Offset(4, 4),
              blurRadius: 4,
              spreadRadius: 8,
            ),
            clipper: BigClipper(),
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),
          ClipShadowPath(
            shadow: const BoxShadow(
              color: Colors.black45,
              offset: Offset(4, 4),
              blurRadius: 4,
              spreadRadius: 8,
            ),
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
