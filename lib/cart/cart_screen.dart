import 'package:flutter/material.dart';
import 'package:grocery_app/screens/auth/fruits_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("My cart"),
      ),
      
      

      body: 
      ListView.builder(
        
        itemCount: productData.length,
        scrollDirection: Axis.vertical,

        itemBuilder: (context, index) {
          return Container(
            height: 117,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadiusGeometry.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 2,
                  spreadRadius: 4,
                  offset: Offset(0, 1),
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/apple.png",),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Apple", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                        Text("1kg"),
                        Text("₹150.00",style: TextStyle(color: Colors.green),)
                      ],
                    ),
                    
                  ],
                  
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                        children: [
                          Icon(Icons.add_circle, color: Colors.green,),
                          Text("1"),
                          Icon(Icons.remove_circle, color: Colors.green,),
                        ],
                      ),
                ),

                
              ],
            ),
            
          );

          
          
        },
      
      ),


      

      
    );
  }
}
