import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grocery_app/screens/auth/fruits_list.dart';
import 'package:grocery_app/screens/home/fruits_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Home"),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset("assets/menubar.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/avtar.png"),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(height: 15),
                Text(
                  "Hello Beejay",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  "what are you looking for ?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF4F5F9),

                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.menu),
                    hintText: "search keywords..",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 121,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/offer.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Catagories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff212220),
                      ),
                    ),
                    SizedBox(height: 10),

                    SizedBox(
                      height: 96,
                      child: ListView.builder(
                        itemCount: fruitsList.length,
                        scrollDirection: Axis.horizontal,

                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              children: [
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5),

                                    image: DecorationImage(
                                      image: AssetImage(
                                        fruitsList[index]["image"],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(fruitsList[index]["name"]),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Featured product",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.6,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: 4,

                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.white,

                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 25,

                                        color: Color(0xffF56262),
                                        child: Center(
                                          child: Text(
                                            "-16%",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                190,
                                                21,
                                                9,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.favorite_outline),
                                    ],
                                  ),
                                  

                                  InkWell(onTap: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (_)=>FruitsScreen(

                                      name: productData[index]["name"],
                                      image: productData[index]["image"],
                                      price: productData[index]['price'],
                                      quantity: productData[index]['quantity'],
                                      description: productData[index]["description"],
                                      

                                    )),);
                                  },
                                    child: Image.asset(
                                      productData[index]["image"],
                                      height: 100,
                                    ),
                                  ),
                                  Text(
                                    productData[index]["price"],
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    productData[index]["name"],
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Text(productData[index]["quantity"]),

                                  SizedBox(height: 120,),

                                  Positioned(
                                
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5),
                                      child: DottedLine(
                                        dashColor: Colors.green,
                                        lineThickness: 2,
                                      ),
                                    ), 
                                  ),
                                  



                                   
                                   
                                   


                                
                                ],
                              ),

                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 25,
                                  child: Icon(Icons.shopping_bag, color: Colors.white,),
                                ),

                              ),
                              
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
