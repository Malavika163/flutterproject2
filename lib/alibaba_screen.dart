import 'package:flutter/material.dart';




class AlibabaScreen extends StatefulWidget {
  @override
  State<AlibabaScreen> createState() => _AlibabaScreenState();
}

class _AlibabaScreenState extends State<AlibabaScreen> {
  var a=[
    "Apparel & Accessories",
    "Metals & Alloys",
    "Vehicle Accessories, Electronics & Tools",
    "Consumer Electronics",
    "",
    

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // Custom Container with TabBar
            Container(
              color: const Color.fromARGB(255, 255, 100, 65),
              padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tab Bar
                  TabBar(
                    indicatorColor: Colors.white,
                    labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white70,
                    tabs: [
                      Tab(text: "Products"),
                      Tab(text: "Manufacturers"),
                      Tab(text: "Regional Supplies"),
                    ],
                  ),
                  SizedBox(height: 10),

                  // Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Icon(Icons.emoji_people, color: Colors.blue), // Shirt icon
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "goku t-shirt",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(Icons.camera_alt_outlined), // Camera icon
                        SizedBox(width: 10),
                       IconButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.black),
                        ),
                        onPressed: (){
                        

                        }
                        , icon: Icon(Icons.search,color: Colors.white,))// Search icon
                      ],
                    ),
                  ),
                ],
              ),
            ),
              Container(
                
                height: 120,
                width: 1800,
                color: const Color.fromARGB(255, 215, 207, 207),
                
                child: SingleChildScrollView(
                  child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      TabBar(
                        isScrollable: true,
                        indicatorColor: Colors.black,
                      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      labelColor: Colors.black,
                      unselectedLabelColor: const Color.fromARGB(141, 188, 180, 180),
                      tabs: [
                         
                      Tab(text: "All"),
                      
                     Text("Apparel & Accessories",style: TextStyle(color: Colors.white)),
                     Text("Metals & Alloys",style: TextStyle(color: Colors.white)),
                     Text("Vehicle Accessories, Electronics & Tools",style: TextStyle(color: Colors.white)),
                     Text("Consumer Electronics",style: TextStyle(color: Colors.white)),
                     Text("Packaging & Printing",style: TextStyle(color: Colors.white)),
                     Text("Food & Beverag",style: TextStyle(color: Colors.white)),
                     Text("Mother,kids & Toys",style: TextStyle(color: Colors.white)),
                     Text("School & Office Supplies"),
                      
                     
                      ],
                      ),
                    ],
                  ),
                )
                  
                ),
              
            // Tab Views
            // Expanded(
            //   child: TabBarView(
            //     children: [
            //       Center(child: Text("Products Content")),
            //       Center(child: Text("Manufacturers Content")),
            //       Center(child: Text("Regional Supplies Content")),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      );
  }
}