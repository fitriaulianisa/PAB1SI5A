import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: BiggerText(text: "Hello, World!"),
          ),
          ),
    );
  }
}

// class Heading extends StatelessWidget {
// final String text;
// const Heading({super.key, required this.text});

// @override
// Widget build(BuildContext context) {
// return Text(
// text,
// style: const TextStyle(
// fontSize: 24.0,
// fontWeight: FontWeight.bold,
// ),
// );
// }
// }

// class ContohStateful extends StatefulWidget {
// final String parameterWidget;
// const ContohStateful({super.key, required this.parameterWidget});

// @override
// State createState() => _ContohStatefulState();
// }

// class _ContohStatefulState extends State {
// String _dataState;
// @override
// Widget build(BuildContext context) {}
// }

class BiggerText extends StatefulWidget {
  final String text;
  const BiggerText({super.key, required this.text});

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText>{
  double _textSize = 16.0;

  @override

  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}
  