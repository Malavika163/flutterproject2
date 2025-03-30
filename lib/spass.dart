import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
    String? pass;
    String? pas;
    String? name;
    String? email;
    String? Password;
    String? gen;
    var sharedvalue = "";
  var getval = "";
   Homepage({super.key,this.pass,this.pas,this.name,this.email,this.Password,this.gen});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromARGB(255, 87, 238, 137),
    body: Column(
      children: [
        Text("$pass"),
        Text("$pas"),
        Text("$name"),
        Text("$email"),
        Text("$Password"),
        Text("$gen"),
        
      ],
    )
   
    );
    
  
  }
  
  }
  

  
