import 'package:flutter/material.dart';
import 'package:flutterproject2/spass.dart';

class Personaldetails extends StatefulWidget {
  const Personaldetails({super.key});

  @override
  State<Personaldetails> createState() => _MyRadioCheckState();
}

class _MyRadioCheckState extends State<Personaldetails> {
  
  bool isChecked = false;
  bool isChecked1 = false;
  String? gen;
  
  var namee=TextEditingController();
  var name="";
  var emaill=TextEditingController();
  var email="";
  var passwordd=TextEditingController();
    var Password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 190, 233, 62),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Align(
              child: Text(
                "Personal Details",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              children: [
                Text("Name :"),
                Expanded(
                  child: TextField(
                    controller:namee,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
             Row(
              children: [
                Text("Password :"),
                Expanded(
                  child: TextField(
                    controller: emaill,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
             Row(
              children: [
                Text("E-mail id :"),
                Expanded(
                  child: TextField(
                    controller: passwordd,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Text("Gender :"),
                Expanded(
                  child: RadioListTile(
                      title: const Text("Male"),
                      value: "Male",
                      groupValue: gen,
                      onChanged: (value) {
                        setState(() {
                          gen = value!;
                        });
                      }),
                ),
                Expanded(
                  child: RadioListTile(
                      title: const Text("Female"),
                      value: "Female",
                      groupValue: gen,
                      onChanged: (value) {
                        setState(() {
                          gen = value!;
                        });
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text("Contact# :"),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              child: Column(
                children: [
                  
                  Text(
                    "Educational Qualifications",
                    
                    style: TextStyle(color: Colors.red, 
                    fontSize: 20,
                    fontStyle:FontStyle.italic),
                  ),
                ],
              ),
              
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text("Hobbies",style: TextStyle(color: Colors.red, fontSize: 20),),
                Expanded(
                  child: CheckboxListTile(
                      title: const Text("playing chess "),
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                ),
                Expanded(
                  child: CheckboxListTile(
                      title: const Text("Reading books"),
                      value: isChecked1,
                      onChanged: (value) {
                        setState(() {
                          isChecked1 = value!;
                        });

                      },
                      ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              child: Text(
                "Address",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  hintMaxLines: 10),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text("Attach Resume :"),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Text("Choose file"),
                    height: 20,
                    width: 50,
                  ),
                ),
                const Text("No file choosen")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage(name:namee.text,
                email: emaill.text,
                Password: passwordd.text,
                gen: gen,
                )
               )
              );
              },
              child: Text("Submit"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  
                ) 
                ),

           ),
         Text(name),
         Text(email),
         Text(Password),
         ],
          
        ),
      ),

    );
  }
}