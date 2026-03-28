import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CounterApp',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CounterApp'),
          leading: const Icon(Icons.menu_book_rounded),
          actions: [
            IconButton(
              onPressed: () {
                exit(0);
              },
              icon: const Icon(Icons.logout_rounded),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                counter == 0
                    ? 'Cero clicks'
                    : counter == 1
                        ? 'Click'
                        : 'Clicks',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: const Icon(Icons.refresh_rounded),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Icon(Icons.plus_one_rounded),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  if (counter > 0) {
                    counter--;
                  }
                });
              },
              child: const Icon(Icons.exposure_minus_1_rounded),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}