import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/home_screen.dart';
import 'package:grocery_app/screens/onboarding/onboarding_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              InkWell(
                 onTap: (){
                Navigator.pop(context);

              },
                child: Icon(Icons.arrow_back, size: 30, color: Color(0xff82CD47))),
              Center(child: Image.asset("assets/logo.png", height: 200)),

              Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff82CD47),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text("Name", style: TextStyle(fontSize: 20, color: Colors.grey)),
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Beejay",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
                SizedBox(height: 15,),
              Text("Email", style: TextStyle(fontSize: 20, color: Colors.grey)),
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "beejaysuvedi@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 15),

              Text(
                "Password",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),

              SizedBox(height: 5),

              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter Your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

               SizedBox(height: 15),

              Text(
                "Confirm Password",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),

              SizedBox(height: 5),

              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter Your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget password?",
                  style: TextStyle(color: Color(0xff82CD47), fontSize: 14),
                ),
              ),

              SizedBox(height: 20),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HomeScreen()),
                  );
                },

                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Color(0xff82CD47),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

             

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 16  ),
                  ),
                  Text(
                    "Sign in",
                    style: TextStyle(
                      color: Color(0xff82CD47),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}