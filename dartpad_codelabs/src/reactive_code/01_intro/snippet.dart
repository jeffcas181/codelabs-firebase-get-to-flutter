import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Flutter Demo',
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;

  void increment() {
    setState(() {
      _count++;
    });
  }

  void decrement() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction'),
      ),
      body: Center(
        child: Container(
          //TODO[1]: Write logic to assign random color to observe rebuilds
          color: Colors.black54,
          child: Column(
            children: [
              CounterBody(
                count: _count,
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

class CounterBody extends StatelessWidget {
  final int count;

  const CounterBody({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(48),
      //TODO[2]: Write logic to assign random color to observe rebuilds
      color: Colors.deepPurple,
      child: Text(
        count.toString(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
