import 'package:flutter/material.dart';

//Stateless contain one class provide widget

//StateFull contain 2 classes
//1. first class provide widget
//2. second class provide state from widget

// ignore: must_be_immutable
class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;
  // 1.Constructor
  // 2.initState
  // 3.build method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  counter--;
                debugPrint(counter.toString());
                });
              },
              child: const Text('MINUS'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  counter++;
                  debugPrint(counter.toString());
                });
              },
              child: const Text('PLUS'),
            ),
          ],
        ),
      ),
    );
  }
}
