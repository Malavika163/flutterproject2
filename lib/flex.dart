import 'package:flutter/material.dart';

class flexx extends StatelessWidget {
  const flexx({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Column(
  children: [
  Expanded(flex: 2, child: Container(color: Colors.cyan,)),
    Expanded(flex: 1, child: Container(color: const Color.fromARGB(255, 85, 0, 212),)),
    Expanded(child: Container(height:40,width:79))
  ],
),

      
    );
  }
}