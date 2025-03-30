import 'package:flutter/material.dart';


class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool a=false;
  bool b=false;
  bool c=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         CheckboxListTile(
          title: Text("Accept terms and conditions"),
          value: a, 
          onChanged: (value)
          {
            setState(() {
              a=value!;
            });
          }
          ),
           CheckboxListTile(
          title: Text("Accept terms "),
          value: b, 
          onChanged: (value)
          {
            setState(() {
              b=value!;
            });
          }
          ),
          
           Text(
          "Selected Items: " +
              (a
                  ? "Option 1, "
                  : "                                                                     ") +
              (b ? "Option 2, " : ""),
               
        ),
        ],
      ),
    );
  }
}