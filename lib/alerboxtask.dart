import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
   MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController ncontroller=TextEditingController();
  final TextEditingController pcontroller=TextEditingController();
  void _checkTextField(){
        if(ncontroller.text.isEmpty)
        {
          AlertBoxx();
        }
        else if(pcontroller.text.isEmpty){
          AlertBoxx();
        }
        else{
         // print("$_controller.text");

        }

  }
  void AlertBoxx(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Alert"),
        content: Text("the field is empty"),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("ok"))
        ],
      );

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 102, 151, 237),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Register now",style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight:FontWeight.bold,
              color: Colors.white 
            ),),
          ),
        ),

      ),
      
      body: Column(
        
        children: [
          SizedBox(height:100,),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ncontroller,
              decoration:InputDecoration(
                hintText: "phone number,email or username",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)
                )
              ) ,
              
            ),
            
          ),
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: pcontroller,
              decoration:InputDecoration(
                hintText: "password",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)
                )
              ) ,
              
            ),
          ),
          SizedBox(height: 40,),
        ElevatedButton(onPressed:_checkTextField, child: Text("register"),
        style:ElevatedButton.styleFrom(
          minimumSize: Size(100, 6),
          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(6)
                          )
          ),
        )
        ],
      ),
    );
  }
}