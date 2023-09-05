import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
  Widget meuLayoutWidget() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        "Valor",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class _MyAppState extends State<MyApp> {
  containerBuild(
      {Color bgColor = Colors.green,
      double w = 120,
      double h = 50,
      double radius = 5}) {
    return Container(
      margin: const EdgeInsets.all(40),
      width: w,
      height: h,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(radius)),
    );
  }

  @override
  Widget meuLayoutWidget() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        "Valor",
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Avaliação 1")),
          body: Center(
            child: Container(
              width: 400,
              height: 400,
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  containerBuild(),
                  containerBuild(),
                ],
              ),
            ),
          )),
    );
  }
}
