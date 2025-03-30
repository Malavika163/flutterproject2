import 'package:flutter/material.dart';
import 'package:flutterproject2/alibaba_screen.dart';
import 'package:flutterproject2/datetime.dart';
import 'package:flutterproject2/textfield.dart';














void main(List<String> args) {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:textfields(),
    debugShowCheckedModeBanner: false,);
  }
}