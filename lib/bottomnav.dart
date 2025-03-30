import 'package:flutter/material.dart';
import 'package:flutterproject2/button.dart';
import 'package:flutterproject2/signin.dart';
import 'package:flutterproject2/tapbar.dart';

class bt extends StatefulWidget {
  const bt({super.key});

  @override
  State<bt> createState() => _btState();
}

class _btState extends State<bt> {
  var c=0;
  var pages=[texts(),form()];
  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
 bottomNavigationBar:BottomNavigationBar(items: 
   [
   BottomNavigationBarItem(icon:Icon(Icons.message),
   label: "message",

   ),
 BottomNavigationBarItem(icon: Icon(Icons.add_ic_call_outlined),
 label:"call",
 )
   ],
currentIndex: c,
onTap:(value) {
   setState(() {
     c=value;
   });


}

 ),



   body: pages[c],
 
 
 );

           
    
  }
}