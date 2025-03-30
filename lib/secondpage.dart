import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String retrievedValue = "";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  void getValue() async {
    
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      retrievedValue = sharedPreferences.getString("key") ?? "No Data Found";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: Text(
          retrievedValue,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}