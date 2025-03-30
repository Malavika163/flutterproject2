import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
const MyHomePage({super.key});

@override
State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(),
body: Center(
child: ElevatedButton(
onPressed: () {
showDialog(
context: context,
builder: (cnxt) => AlertDialog(
title: const Text("Alert Dialog Box"),
content:
const Text("You have raised a Alert Dialog Box"),
actions: [
TextButton(

onPressed: () {
Navigator.of(cnxt).pop();
},
child: const Text("okay",),
),
TextButton(onPressed: () {}, child: Text("cancel"))
],
));
},
child: Text("alert")),
),
);
}
}