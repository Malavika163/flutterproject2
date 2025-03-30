import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
   ListviewPage({super.key});
  var fruits=["apple","banana","orange","grapes","mango"];
  var image=["assets/pexels-photo-206959.jpeg",
              "assets/Bunch-of-bananas-67e91d5.webp",
              "assets/Oranges-mix6-1.webp",
              "assets/download.jpeg",
               "assets/download (1).jpeg"
             ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView.builder(itemBuilder:(context,index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.amber,
        height: 60,
        child: ListTile(
          leading:CircleAvatar(
        backgroundImage:AssetImage(image[index]) ,
        ),
           
         title: Text("${fruits[index]}"),
         subtitle: Text("fruits"),
         trailing: Icon(Icons.circle),
         
         ),
        
      ),
    );
   
     },
     itemCount: fruits.length,
     ),



    );
  }
}