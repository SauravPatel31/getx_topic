import 'package:flutter/material.dart';
import 'package:getx_topic/home_page.dart';
import 'package:get/get.dart';

import 'counter_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CounterApp(),
    );
  }
}

