import 'package:flutter/material.dart';
import 'package:flutterproject2/button.dart';
import 'package:flutterproject2/task.dart';

class textfields extends StatefulWidget {
   textfields({super.key});

  @override
  State<textfields> createState() => _textfieldsState();
}

class _textfieldsState extends State<textfields> {
var namec=TextEditingController(

);
var data="";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
 body: Padding(
   padding: EdgeInsets.only(left: 10,right: 15,top: 20),
   child: Column(
     children: [
       TextField(
        controller: namec,
       decoration: const InputDecoration(
          hintText: "enter name",
          labelText: "name",
          prefixIcon: Icon(Icons.person),
          suffixIcon:Icon(Icons.password),
          
          
       ),
       
       
       
       ),
     SizedBox(height: 10,) , TextField(
   
   decoration: InputDecoration(
          hintText: "enter email",
          labelText: "email",
          prefixIcon: Icon(Icons.mail),
          suffixIcon:Icon(Icons.password),
          border: OutlineInputBorder(),
                   )
   
       ),TextField(
   
   
   decoration: InputDecoration(
          hintText: "enter age",
          labelText: "age",
         
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.red,width: 2.5,)),
                   )
   
   
       ),TextField(
   
    decoration:InputDecoration(
   
                 )
   
       ),
     ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>texts(pass: namec.text,)));}, child:Text("click me")),
     ElevatedButton(onPressed: (){setState(() {
       data=namec.text;
     });}, child: Text("button")),
     Text(data)
     ],
   ),
 ),



    );
  }
}