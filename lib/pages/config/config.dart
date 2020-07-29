import 'package:api/pages/home/home.dart';
import 'package:flutter/material.dart';

class ConfigApp extends StatefulWidget {
  @override
  _ConfigAppState createState() => _ConfigAppState();
}

class _ConfigAppState extends State<ConfigApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
