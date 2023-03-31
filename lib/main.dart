import 'package:flutter/material.dart';
import 'home_page.dart';

main() => runApp(MonApp());

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: 'QUIZI',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.pink),
    );
  }
}
