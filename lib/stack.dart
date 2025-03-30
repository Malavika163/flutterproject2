import 'package:flutter/material.dart';

class stacks extends StatelessWidget {
  const stacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Stack(


  children: [
Positioned(child: Container(height: 200,width:100,color:Colors.blue,)),
Positioned(top:20,bottom:50,child: Container(height: 100,width:100,color:Colors.blueGrey)),
  ],
),


    );
  }
}