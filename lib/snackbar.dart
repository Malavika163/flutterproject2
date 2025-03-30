import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());

}

class MyApp extends StatelessWidget {
const MyApp({super.key});

// This widget is the root of your application.
@override

Widget build(BuildContext context) {
return MaterialApp(

title: 'Flutter Demo',

theme: ThemeData(
primarySwatch: Colors.blueGrey
),

home: HomeScreen(),
);
}

}

var value=0;

class HomeScreen extends StatefulWidget {
const HomeScreen({super.key});

@override
State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

@override

Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(),

body: Center(
child: ElevatedButton(
onPressed: () {

final snackBar = SnackBar(
content: const Text('Yay! A SnackBar!'),
behavior: SnackBarBehavior.floating,
action: SnackBarAction(

label: 'Undo',

onPressed: () {
// Some code to undo the change.

},
),
);

  
ScaffoldMessenger.of(context).showSnackBar(snackBar);

},
child: const Text('Show SnackBar'),
),

)
);
}
}