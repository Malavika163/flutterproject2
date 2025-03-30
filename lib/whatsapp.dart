import 'package:flutter/material.dart';

class  WhatsappScreen extends StatefulWidget {
  const WhatsappScreen({super.key});

  @override
  State<WhatsappScreen> createState() => _MyWhatsAppState();
}

class _MyWhatsAppState extends State<WhatsappScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Column(children: [
          AppBar(
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "WhataApp",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      
                      decoration: InputDecoration(
                        
                        hintText: "Ask Meta AI or Search",
                        fillColor: Colors.grey,
                        filled: true,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.black,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text("All")),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Unread")),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Favorites")),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Groups")),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("+")),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.message,
              ),
              label: "Chats"),
          const BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.update),
            label: "Updates",
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.group),
              label: "Communication"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.call),
              label: "Call"),
        ],
      ),
    );
  }
}