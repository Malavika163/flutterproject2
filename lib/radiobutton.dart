import 'package:flutter/material.dart';
import 'package:flutterproject2/snackbar.dart';
import 'package:flutterproject2/tapbar.dart';

class RadiobuttonPage extends StatefulWidget {

   RadiobuttonPage({super.key});

  @override
  State<RadiobuttonPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RadiobuttonPage> {
  var rb;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RadioListTile(
            title: const Text("male"),
            value: "male", 
            groupValue: rb, 
            onChanged: (value)
            {
              setState(() {
                 rb= value!;
              });
            }
            ),
          RadioListTile(
            title: const Text("female"),
            value: "female", 
            groupValue: rb, 
            onChanged: (value)
            {
              setState(() {
                 rb= value!;
              });
            }
            ),
        ],
      ),
    );
  }
}