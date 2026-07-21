import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackLearningScreen extends StatelessWidget {
  const StackLearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack screen", style: GoogleFonts.poppins()),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Positioned
          
          (
            bottom: 20,
            right: 50,
            child: Container(
              height: 20,
              width: 50,
              color: Colors.red,
            ),
            ),
            Positioned
          
          (
            bottom: 20,
            left: 50,
            child: Container(
              height: 20,
              width: 50,
              color: Colors.red,
            ),
            ),
        ],
      ),
    );
  }
}