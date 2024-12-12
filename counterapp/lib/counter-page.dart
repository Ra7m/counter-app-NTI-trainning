// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  int counter = 0;
  void _increament() {
    setState(() {
      counter++;
    });
  }

  void restorecountre() {
    setState(() {
      counter = 0;
    });
  }

  void minusrecountre() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter App ',
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 113, 12, 12),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              counter.toString(),
              style: const TextStyle(
                  color: Color.fromARGB(255, 113, 12, 12), fontSize: 50),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  onPressed: () {
                    _increament();
                  },
                  child: const Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 113, 12, 12),
                  )),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    restorecountre();
                  },
                  child: const Icon(
                    Icons.restore,
                    color: Color.fromARGB(255, 113, 12, 12),
                  )),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    minusrecountre();
                  },
                  child: const Icon(
                    Icons.minimize,
                    color: Color.fromARGB(255, 113, 12, 12),
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
