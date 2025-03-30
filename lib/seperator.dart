import 'package:flutter/material.dart';

class ListSeperatorPage extends StatelessWidget {
   ListSeperatorPage({super.key});
 var fruits=["apple","banana","orange","grapes","mango"];
 var image=["assets/pexels-photo-206959.jpeg",
              "assets/Bunch-of-bananas-67e91d5.webp",
              "assets/Oranges-mix6-1.webp",
              "assets/download.jpeg",
               "assets/download (1).jpeg"
             ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.separated(itemBuilder:(context,index)
      {
        return ListTile(
          tileColor: const Color.fromARGB(255, 201, 99, 244),
           leading:CircleAvatar(
       backgroundImage:AssetImage(image[index]) ,
        ),
           
         
         subtitle: Text("fruits"),
         trailing: Icon(Icons.circle),
         
          
            title: Text(fruits[index]),

        );
      } , separatorBuilder: (context,index)
      {


        return Divider(
          height: 20,
          color: const Color.fromARGB(255, 11, 11, 11),
          
        );
      }
      
      , itemCount: fruits.length),


    );
  }
}