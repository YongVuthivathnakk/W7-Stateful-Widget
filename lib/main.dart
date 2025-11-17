import 'package:flutter/material.dart';
import 'package:w7_stateful_widget/pages/EX-1/ex_1.dart';
import 'package:w7_stateful_widget/pages/EX-2/ex_2_step_1_start.dart';
import 'package:w7_stateful_widget/pages/EX-3/ex_3_start.dart';
import 'package:w7_stateful_widget/pages/bonus/bonus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Bonus(),
    );
  }
}
