import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87),
          onPressed: (){},
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Find Your", style: TextStyle(color: Colors.black87, fontSize: 25)),
                      Text("Inspiration", style: TextStyle(color: Colors.black, fontSize: 40)),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 243, 243, 1),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search, color: Colors.black87),
                              hintText: "Search you're looking for",
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 15
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Promo Today", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            promoCard('assets/images/two.jpg'),
                            promoCard('assets/images/three.jpg'),
                            promoCard('assets/images/one.jpg'),
                            promoCard('assets/images/four.jpeg'),
                            promoCard('assets/images/five.jpeg'),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image:  AssetImage("assets/images/six.jpg"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      SizedBox(height: 20)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget promoCard(image){
     return AspectRatio(aspectRatio: 2.62/3,
       child: Container(
         margin: EdgeInsets.only(right: 15.0),
         decoration: BoxDecoration(
           color: Colors.orange,
           borderRadius: BorderRadius.circular(20),
           image: DecorationImage(
             image: AssetImage(image),
             fit: BoxFit.cover
           )
         ),
         child: Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             gradient: LinearGradient(
               begin: Alignment.bottomRight,
               stops: [0.1, 0.9],
               colors: [
                 Colors.black.withOpacity(.8),
                 Colors.black.withOpacity(.1),
               ]
             )
           ),
       ),
       ),
     );
  }
}
