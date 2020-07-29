import 'dart:convert';
import 'package:api/services/responses.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url = 'https://frazile.com';
  Users usersapi;
  bool isLoading = false;

  fetchData() async {
    setState(() {
      isLoading = true;
    });
    var res = await http.get(url);
    var decodedRes = jsonDecode(res.body);
    // print(decodedRes.toString());
    usersapi = Users.fromJson(decodedRes);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
      ),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : Text(
                usersapi.message,
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
      ),
    );
  }
}
