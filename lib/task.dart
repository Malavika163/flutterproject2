import 'package:flutter/material.dart';

class task extends StatelessWidget {
  String? pass;
   task({super.key,this.pass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: const Color.fromARGB(255, 3, 21, 183))),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 1, child: Container(color: Colors.white)),
                  Expanded(flex: 1, child: Container(color: Colors.red)),
                ],
              ),
            ),
           Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(flex: 3, child: Container(color: Colors.yellow)),
                  Expanded(flex: 1, child: Container(color: Colors.black)),
                  Expanded(flex: 1, child: Container(color: Colors.green)),
                  Expanded(flex: 3, child: Container(color: Colors.red)),
                ],
              ),
            ),
           Expanded(flex:1, child: Row(children: [
 Expanded(flex:1, child:Container(color:Colors. black,)),
  Expanded(flex:1, child:Container(color:const Color.fromARGB(255, 245, 237, 237),)),
 Expanded(flex:1, child:Container(color:Colors.grey)),
Expanded(flex:2, child:Container(color:Colors.yellow)),

           ],))
          
          ]

 ),
    );
  }
}