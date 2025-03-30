import 'package:flutter/material.dart';
import 'package:flutterproject2/textfield.dart';

class Drwr extends StatelessWidget {
  const Drwr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text("Drawer"),
    
         
               ),
        drawer: Drawer(child: Column(
          children: [
            const UserAccountsDrawerHeader(
              
              decoration: BoxDecoration(image:DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage('assets/download.jpg'))),
              accountName: Text("accountName"),
             accountEmail: Text("Email"),
             currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://i0.wp.com/picjumbo.com/wp-content/uploads/mysterious-fantasy-forest-with-old-bridges-free-image.jpg?w=600&quality=80"),
              
               ),
             ),
         const ListTile(

          leading: Icon(Icons.abc_rounded),
          title: Text("Name"),
          trailing: Icon(Icons.arrow_forward),
         ),
        
       const ListTile(

          leading: Icon(Icons.email),
          title: Text("Email"),
          trailing: Icon(Icons.arrow_forward),
          
         ),
        ListTile(

          leading: Icon(Icons.abc_rounded),
          title: Text("Name"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>textfields())); 
          },
          
          ),
         
          ],
        ),
         ),
       
    );
  }
}