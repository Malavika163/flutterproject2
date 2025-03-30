import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UpiPaymentScreen(),
    );
  }
}

class UpiPaymentScreen extends StatelessWidget {
  const UpiPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Pay friends and merchants",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.brown,
            child: Text("M", style: TextStyle(color: Colors.white)),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Scan & Pay Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Scan & pay any UPI QR with credit card",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Icon(Icons.qr_code, color: Colors.blue, size: 40),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Payment Options Grid
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: [
                _buildPaymentOption(Icons.qr_code_scanner, "Scan any QR code"),
                _buildPaymentOption(Icons.contacts, "Pay contacts"),
                _buildPaymentOption(Icons.phone_android, "Pay phone number"),
                _buildPaymentOption(Icons.account_balance, "Bank transfer"),
                _buildPaymentOption(Icons.account_circle, "Pay UPI ID or number"),
                _buildPaymentOption(Icons.swap_horiz, "Self transfer"),
                _buildPaymentOption(Icons.receipt, "Pay bills"),
                _buildPaymentOption(Icons.smartphone, "Mobile recharge"),
              ],
            ),
            SizedBox(height: 20),

            // UPI ID Section
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("UPI ID: malavikasubash174@okaxis", style: TextStyle(fontSize: 14)),
                  Icon(Icons.copy, color: Colors.blue),
                ],
              ),
            ),
            SizedBox(height: 20),

            // People Section
            Text("People", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            SizedBox(height: 10),
            _buildPeopleRow(),
          ],
        ),
      ),
    );
  }

  // Widget for Payment Options
  Widget _buildPaymentOption(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.blue[50],
          child: Icon(icon, color: Colors.blue, size: 30),
        ),
        SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style:TextStyle(fontSize: 12)),
      ],
    );
  }

  // Widget for People Row
  Widget _buildPeopleRow() {
    List people = [
      
      {"name": "Vismaya", "color": Colors.grey},
      {"name": "Aswathy", "color": Colors.blueGrey},
      {"name": "Akshay", "color": Colors.purple},
      {"name": "Shijila", "color": Colors.blue},
      {"name": "Subash k v", "color": Colors.green},
      {"name": "Jismi", "color": Colors.blueGrey},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: people.map((person) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: person["color"],
                  child: Text(
                    person["name"][0],
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 6),
                Text(person["name"], style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}