import 'package:flutter/material.dart';

class Dropdownpage1 extends StatefulWidget {
  const Dropdownpage1({super.key});

  @override
  State<Dropdownpage1> createState() => _Dropdownpage1State();
}

class _Dropdownpage1State extends State<Dropdownpage1> {
  var dd="BCA";
  var itemms=[
    "BCA",
    "BBA",
    "B.voc Software Development",
    "Bsc Computer Science"


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 201, 242),
        title: Center(child: Text("Select Qualification")),

      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Center(
              child: DropdownButton(
                
                value: dd,
                
                icon: const Icon(Icons.keyboard_arrow_down),    
                
                items: itemms.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) { 
                  setState(() {
                    dd = newValue!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}