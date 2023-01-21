import 'package:flutter/material.dart';
import 'package:flutter_meetup/pages/list_heritages/pages/list_heritage_page.dart';
import 'package:flutter_meetup/pages/list_heritages/widgets/list_product_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListHeritagePage(),
    );
  }
}
