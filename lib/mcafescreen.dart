import 'package:flutter/material.dart';

class Mcafescreen extends StatelessWidget {
  const Mcafescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        
        preferredSize: Size.fromHeight(30),
      
        child: AppBar(
          
          leading: Row(
            children: [
              Text('m',style: TextStyle(color:Colors.black,fontSize: 20),),
              Text("Cafe",style: TextStyle(color:const Color.fromARGB(255, 223, 143, 5),fontSize: 20),),
              
            ],
          ),
        
        ),
      ),
    );
  }
}