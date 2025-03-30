import 'package:flutter/material.dart';
import 'package:flutterproject2/delhi.dart';

class CityListScreen extends StatefulWidget {
  

   CityListScreen({super.key});

  @override
  State<CityListScreen> createState() => _CityListScreenState();
}

class _CityListScreenState extends State<CityListScreen> {
  var cities = [
    {
      'name': 'Delhi',
      'country': 'India',
      'population': '19 mill',
      'image': 'assets/delhi.jpeg',
    },
    {
      'name': 'London',
      'country': 'Britain',
      'population': '8 mill',
      'image': 'assets/landon.jpg',
    },
    {
      'name': 'Vancouver',
      'country': 'Canada',
      'population': '2.4 mill',
      'image': 'assets/canada.jpg',
    },
    {
      'name': 'New York',
      'country': 'USA',
      'population': '8.1 mill',
      'image': 'assets/newyork.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(60,80),
        
        child: AppBar(
          
          title: const Text('Cities around world',style: TextStyle(color:Colors.white,fontSize:30),),
          backgroundColor: Colors.orange,
        ),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          final city = cities[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>DelhiPage()));},
              tileColor: Colors.white,
              leading: Image.asset(
                city['image']!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,

              ),
              title: Text(
                city['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '${city['country']}\nPopulation: ${city['population']}',
                style: const TextStyle(fontSize: 14),
              ),
            ),
          );
        },
      ),
    );
  }
}