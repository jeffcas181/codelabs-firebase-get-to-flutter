import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Flutter Dart Workshop',
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatelessWidget {
  final ValueNotifier<int> _countNotifier = ValueNotifier(0);

  CounterPage({Key? key}) : super(key: key);

  void increment() {
    _countNotifier.value++;
  }

  void decrement() {
    _countNotifier.value--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive code with ValueNotifier!'),
      ),
      body: Center(
        child: Container(
          color:
              Colors.primaries[math.Random().nextInt(Colors.primaries.length)],
          child: Column(
            children: [
              CounterText(
                count: 0,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey,
            child: const Icon(Icons.exposure_minus_1),
            onPressed: decrement,
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            child: const Icon(Icons.exposure_plus_1),
            onPressed: increment,
          ),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  final int count;

  const CounterText({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(48),
      color: Colors.primaries[math.Random().nextInt(Colors.primaries.length)],
      child: Text(
        count.toString(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
