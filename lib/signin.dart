import 'package:flutter/material.dart';

import 'package:flutterproject2/button.dart';

class form extends StatelessWidget {
  form ({super.key});
 var n=TextEditingController();
 var p=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  color: const Color.fromARGB(255, 5, 32, 54),
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        
                        "Sign in to Your \n Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Text(
                      
                      "Sign in to Your account",
                      style: TextStyle(
                      color: Color.fromARGB(255, 73, 69, 69),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                    ),
                    ],
                    ),
                    ],
                   
                    ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Stack(
                        children:[Container(color: Colors.white,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextField(
                                              
                                              controller: n,
                                              decoration: InputDecoration(
                                              
                                              
                                              hintText: "enter your email",
                                              labelText: "Email",
                                              border: OutlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 15, 14, 13))),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                TextField(
                                              obscureText:true,
                                              controller: p,
                                              decoration: InputDecoration(
                                              hintText: "enter your password",
                                              labelText: "Password",
                                            
                                              suffixIcon: Icon(Icons.visibility_rounded),
                                              
                                
                                              border: OutlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 15, 14, 13))),
                                ),
                                ),
                                SizedBox(
                                              height: 20,
                                            ),
                               TextButton(onPressed: (){},
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "Forget password?",style: TextStyle(color: Colors.green),),
                                ),),
                                SizedBox(
                                              height: 20,
                                            ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: ElevatedButton(onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(
                                      builder:(context)=>texts( pass:n.text)));}, 
                                  
                                  
                                  child: Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    foregroundColor: Colors.green,
                                   minimumSize: Size(500, 50),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      
                                    ),
                                  
                                  ),
                                  
                                  ),
                                ),
                                 SizedBox(
                                              height: 20,
                                            ),
                               Text("Or login with",style: TextStyle(color: Colors.black),),
                               SizedBox(
                                              height: 30,
                                            ),
                               Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: OutlinedButton(onPressed: (){}, child: Row(
                              children: [
                                
                                Icon(Icons.facebook_rounded),
                                Text("Google"),
                              ],
                            ),
                            style: OutlinedButton.styleFrom(shape: BeveledRectangleBorder()),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: OutlinedButton(onPressed: (){}, child: Row(
                              children: [
                  
                                Icon(Icons.facebook_rounded),
                                Text("Facebook"),
                              ],
                            ),
                            style: OutlinedButton.styleFrom(shape: BeveledRectangleBorder()),
                            ),
                          )
                        ],
              ),
                            
                              SizedBox(
                                height: 20,
                              ),
                                  
                               
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have an account?",style: TextStyle(color: Colors.black),),
                                    TextButton(onPressed: (){}, child: Text("Register",style: TextStyle(color: Colors.green),),),
                                  ],
                                ),
                              
                              ],
                              
                            ),
                          
                             
                          
                          
                        ),
                               
                    
                     
              
        ],           
      ),
       ),], ),  
    );       
                  
}
}