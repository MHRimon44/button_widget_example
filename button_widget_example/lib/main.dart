// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Button widget example',
    theme: ThemeData(primarySwatch: Colors.red),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Button Widget Example'),
      ),
      backgroundColor: Colors.blue,
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                print("onPressed");
              },
              child: Text('ElevatedButton'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 14, color: Colors.white))),
            ),
            TextButton(
              onPressed: () {
                print('onPressed');
              },
              child: Text('TextButton'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: EdgeInsets.all(14.0),
                textStyle: TextStyle(fontSize: 14),
                backgroundColor: Colors.black,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('onPressed');
              },
              icon: Icon(Icons.account_circle_rounded),
              label: Text('Click me'),
            ),
            IconButton(
                onPressed: () {
                  print('onPressed');
                },
                icon: Icon(Icons.access_time_rounded)),
            FloatingActionButton(
              onPressed: () {
                print('onPressed');
              },
              child: Text('F'),
            )
          ],
        ),
      ),
    );
  }
}
