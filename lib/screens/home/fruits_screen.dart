import 'package:flutter/material.dart';

class FruitsScreen extends StatelessWidget {
  final String name;
  final String image;
  final String description;
  final String price;
  final String quantity;
  
  
  const FruitsScreen({super.key, required this.name, required this.image, required this.description, required this.price, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 280,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Color(0xffc4f594). withValues(alpha:0.5),
            borderRadius: BorderRadiusDirectional.only(
               bottomEnd: Radius.circular(130),
               bottomStart: Radius.circular(130)
              
            ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  InkWell(
                  onTap: () {
                 Navigator.pop(context);
                },
               child: Icon(Icons.arrow_back),
                ),

                    Icon(Icons.favorite_outline) 
                  ],
            
                ),
                
                Image.asset(
                  image, fit: BoxFit.cover, height: 250,
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    
                      Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),

                     Row(
                      children: [
                        Icon(Icons.remove_circle,),
                        Text("1kg"),

                        Icon(Icons.add_circle)
                      ],
                     )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("Fruits", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [

                      Text("4.5"),
                      Icon(Icons.star, color: Colors.yellow,),
                       Icon(Icons.star , color: Colors.yellow,),
                        Icon(Icons.star , color: Colors.yellow,),
                         Icon(Icons.star , color: const Color.fromARGB(255, 227, 206, 10),),
                         Text("(89 reviews)"),
                         
                    ],
                  ),
                  Text("₹ 180.00", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w700),),
                  SizedBox(height: 15,),
                  Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Text("Apple mountain works as a seller for many apple growers of apple. apple are easy to spot in your produce aisle. They are just like regular apple, but they will usually have a few more scars on."),

                  Text("Read more", style: TextStyle(color: Colors.green),),
                   SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white, borderRadius:BorderRadiusGeometry.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 1)
                            )
                          ]


                        ),
                        child: Row(
                         
                         children: [
                          Icon(Icons.shopping_cart),
                          SizedBox(width:10,),
                        
                         
                          Text("Add to cart", style: TextStyle(fontSize: 16, color: Colors.white
                          ),)
                         ],
                        )
                        
                      ), 
                       Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.green, borderRadius:BorderRadiusGeometry.circular(10),
                           boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 1)
                            )
                          ]

                        

                        ),
                        child: Center(child: Text("Buy now"))
                
                        
                        
                      ),
                   
                      
                   
                    ],
                  )
                
                

              ],
            ),
          )
          
        ],


      )
    );
  }
}