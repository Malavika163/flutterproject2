

import 'package:flutter/material.dart';

class rgstr extends StatelessWidget {
  const rgstr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 11, 9, 18),
            child: Row(
              children: [
                
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text("Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:25 ,
                    ),),
                     Text("Create your Account",
                     style: TextStyle(
                      color: const Color.fromARGB(255, 58, 56, 56),
                     ),),
                     
                  ],
                ),
                
              ),
             
              
                
                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter your name",
                    labelText: "Name",
                    border: OutlineInputBorder(),
                    
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "enter your email address",
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "enter your password",
                    labelText: "password",
                    border: OutlineInputBorder(),
                  ),
                ),
               const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "re enter password",
                    labelText: "confirm password",
                    border: OutlineInputBorder(),
                  ),
                ),
              const  SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {}, child:Text("Register"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.green,
                  ),
                  ),
                
                 SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("I have an account?"),
                    SizedBox(
                        width: 10,
                    ),
                     ElevatedButton(onPressed: (){}, 
                     child: Text("Login",),),
                  ],
                ),
                
              
              ],
              
            ),
          )
        ],
      ),
      
    );
  }
}