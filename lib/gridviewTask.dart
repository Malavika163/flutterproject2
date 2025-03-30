import 'package:flutter/material.dart';

class Pizza extends StatelessWidget {
  var i = [
    "assets/pizza.jpg",
    "assets/pizza2.jpg",
    "assets/pizza3.jpg",
    "assets/pizza4.jpg",
    "assets/pizza5.jpg",
    "assets/pizza6.jpg"
  ];
  var n=["Classic Pepperoni","clam chowder with...","Pizza Brushchetta","Pepperoni Pizza","Cheese Pizza","Chicken Tikka Masala"];
  Pizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            child: Stack(
              children: [
                Image.asset(
                  "assets/pizz7.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 100, 
                ),
                Positioned(
                  top: 40,
                  left: 8,
                  child: Icon(Icons.arrow_back_ios,
                      color: Colors.white,            ),
                ),
                Center(
                  child: Text(
                    "Pizza",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 130,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 228, 213, 213)
                  ),
                 // color: const Color.fromARGB(255, 230, 234, 236),
                  child: Column(
                    children: [
                    Stack(
                        children: [Image.asset(i[index],fit: BoxFit.fill,
                        width: double.infinity,
                        height: 100,
                                           
                        ),
                        Positioned(
                          left: 150,
                          child: Icon(Icons.favorite_border,
                          color: Colors.red,),
                        ),
                    ]),
                      SizedBox(height:2,),
                     
                      Text( "${n[index]}",style: TextStyle(fontWeight:FontWeight.bold,fontStyle:FontStyle.italic  ),),
                      Container(
                        height: 20,
                        width: 138,
                        child: ElevatedButton(onPressed: (){}, child: Row(
                          
                          children: [
                            Expanded(
                              child: Icon(Icons.shopping_cart,
                               color: Colors.red,
                               size: 20,
                              ),
                            ),
                            Text("Add to Cart"),
                            
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                         // fixedSize: Size.fromHeight(100),
                          backgroundColor: const Color.fromARGB(255, 238, 99, 6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                          )
                        ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}