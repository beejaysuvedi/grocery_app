import 'package:flutter/material.dart';
import 'package:grocery_app/screens/auth/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 35,),
            Image.asset("assets/onboard.png", height: 550,),
            SizedBox(height: 15,),
            Text("Grocery Shop", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            Text("at your door",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("The easiest way to buy your grocery shopping", style: TextStyle(fontSize: 15),),

            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (_)=>LoginScreen()),);

              },
              child: Container(
                height: 40,
                width: 284,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xff82CD47), ),
                child: Center(
                  child: Text(
                    "Get Started", style: TextStyle(fontSize: 25,color: Colors.white),
                  ),
                ),
              ),
            )
          ],
          
        

          
        ),
        
        
      ),
      
    );
  }
}