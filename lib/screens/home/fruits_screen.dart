import 'package:flutter/material.dart';

class FruitsScreen extends StatelessWidget {
  const FruitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Icon(Icons.arrow_back, size: 30, color: Color(0xff82CD47)),
              Center(child: Image.asset("assets/logo.png", height: 200)),
            ]
      
    
    ),
    );
  }
}