import 'package:flutter/material.dart';
import 'package:flutterproject2/secondpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPage extends StatefulWidget {
  const SharedPage({super.key});

  @override
  State<SharedPage> createState() => _homeScreenState();
}

class _homeScreenState extends State<SharedPage> {
  var sharedvalue = "";
  var getval = "";
  final textcon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: textcon,
            ),
            ElevatedButton(
                onPressed: () {
                  
                  setState(() {
                    
                    savevalue();
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondPage()));
                },
                child: const Text("clickme")),
            Text(getval)
          ],
        ),
      ),
    );
  }

  void savevalue() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("key", textcon.text);
    getvalue();
    
  }

  void getvalue() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    getval = sharedPreferences.getString("key")!;
  }
}
