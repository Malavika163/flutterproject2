import 'package:flutter/material.dart';

class screen extends StatelessWidget {
  const screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(color: Colors.red),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(color: Colors.purple),
                        ),
                        Expanded(
                          child: Container(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(color: Colors.yellow),
            ),
          ],
        ),
    );
  }
}