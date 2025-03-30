import 'package:flutter/material.dart';

class st extends StatelessWidget {
  const st({super.key});

  @override
  Widget build(BuildContext context) {
    return    
    DefaultTabController(length: 3, 
    child: Scaffold(
appBar:AppBar(
           bottom: TabBar(
                  tabs: [
                  Tab(icon: Icon(Icons.flight)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_car)),
                    
                       ],
                       
         ),
     title: Text("TapBar Demo"),
     


   ),

    body: TabBarView(children:[

         Icon(Icons.flight),
        Icon(Icons.directions_transit, ),
        Icon(Icons.directions_car,),

    ] 
    
    
    
    ), 

                   )
    );
    
  }
}