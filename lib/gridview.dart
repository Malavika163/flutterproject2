import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
   Screen({super.key});
  var clr=[Colors.amberAccent,Colors.blue,Colors.green,Colors.red];
  var txt=["Yellow","Blue","Green","Red"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
          itemCount: 4, itemBuilder: 
      (BuildContext context,int index){
        return Container(
            
      color: (clr[index]),
      height: 150,
      width:100,
      child: Text(
        "${txt[index]}"
        ,style: TextStyle(color: Colors.white),),

        );
      }
      
      ),
    ); 
  }
}