import 'package:flutter/material.dart';
import 'package:grocery_app/screens/auth/login_screen.dart';
import 'package:grocery_app/screens/auth/signup_screen.dart';
import 'package:grocery_app/screens/home/home_screen.dart';
import 'package:grocery_app/screens/onboarding/onboarding_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    SignupScreen(),
    LoginScreen(),
    OnboardingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
       
       bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.notification_add), label: "Notification"),
       ],
       selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
       selectedItemColor: Colors.red,
       unselectedItemColor: Colors.green,
       type: BottomNavigationBarType.fixed,
       currentIndex: _currentIndex,
       onTap: (value){
        setState(() {
          _currentIndex = value;
        });
       },
       ),
    );
  }
}