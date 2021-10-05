import 'package:flutter/material.dart';

import 'foot_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9EFEB),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                    color: Color(0xFFFD7465),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(75.0))),
              ),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                    color: Color(0xFFFE8A7E),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(75.0))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 15.0),
                child: Text(
                  'Good Afternoon!',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80.0, left: 15.0),
                child: Text(
                  'Choose your favorite!',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 160.0, left: 15.0, right: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(75.0),
                          bottomLeft: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0))),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        hintText: 'Search for your favorite',
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 15.0,
                        )),
                  ),
                ),
              )
            ],
          ),
          TabBar(
            controller: tabController,
            indicatorColor: Color(0xFFFE8A7E),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4.0,
            isScrollable: true,
            labelColor: Color(0xFF440206),
            unselectedLabelColor: Color(0xFF440206),
            tabs: [
              Tab(
                child: Text(
                  'DESSERT',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0),
                ),
              ),
              Tab(
                child: Text(
                  'PIZZA',
                  style: TextStyle(fontSize: 15.0, fontFamily: 'Montserrat'),
                ),
              ),
              Tab(
                child: Text(
                  'BARBECUE',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0),
                ),
              ),
              Tab(
                child: Text(
                  'DRINK',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0),
                ),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context).size.height - 550.0,
            child: TabBarView(
              controller: tabController,
              children: [
                new FoodItem(),
                new FoodItem(),
                new FoodItem(),
                new FoodItem(),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'RECOMMEND',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                  color: Color(0xFF440206)),
            ),
          ),
          listItem('assets/steak.png','Chocolate lemon cup cake','The sour and sweetness of the lemon neutralizes the sweetness of the cream',
          '\$ 18.0',134,2412,'2-3per'),
          listItem('assets/steak.png','Strawberry Cupcakes','Rich in taste, dense in taste, with a bit of bitterness in chocolate, it is a great...',
              '\$ 11.0',124,412,'2-3per'),
          listItem('assets/steak.png','Chocolate lemon cup cake','The sour and sweetness of the lemon neutralizes the sweetness of the cream',
              '\$ 10.0',111,212,'2-3per'),
          listItem('assets/steak.png','Strawberry Cupcakes','Rich in taste, dense in taste, with a bit of bitterness in chocolate, it is a great...',
              '\$ 19.0',1,242,'2-3per'),
        ],
      ),
    );
  }

  listItem(String imgPath,String foodName,String descp,String price,int like,int calcount,String serving){
    return Padding(
      padding: EdgeInsets.only(left: 15.0,top: 15.0),
      child: Stack(
        children: [
          Container(
            height: 170.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0)
              ),
            ),
          ),
          Positioned(
            left: 15.0,
            top: 30.0,
            child: Container(
              width: MediaQuery.of(context).size.width -15.0,
              height: 125.0,
              decoration: BoxDecoration(
                  color: Color(0xFFF9EFEB),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 3.0,
                    spreadRadius: 3.0
                  )
                ]
              ),



            ),
          ),
          Positioned(
            left: 90.0,
            top: 64.0,
            child: Container(
              height: 105.0,
              width: MediaQuery.of(context).size.width - 105.0,

              decoration: BoxDecoration(
                  color: Color(0xFFF9EFEB) ,
                borderRadius: BorderRadius.only(
                  topLeft : Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3.0,
                      spreadRadius: 3.0,
                      color: Colors.grey.withOpacity(0.4)

                  )
                ]
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0 ,left: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.favorite,color: Color(0xFFFE8A7E),size: 15.0),
                      SizedBox(width: 5.0),
                      Text(like.toString(),
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey,
                        )
                      ),
                      SizedBox(width: 20.0),
                      Icon(Icons.account_box,color: Color(0xFFFE8A7E),size: 15.0),
                      SizedBox(width: 5.0),
                      Text(
                          calcount.toString() +'cal',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Icon(Icons.play_circle_outline,color: Color(0xFFFE8A7E),size: 15.0,),
                      SizedBox(width: 5.0),
                      Text(
                          serving,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey
                        ),

                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 125.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1.0,
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1.0
                ),
              ],
              color: Colors.white
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15.0,top: 10.0),
              child: Row(
                children: [
                  Image.asset(imgPath,
                  fit: BoxFit.cover,height: 160.0,),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Color(0xFF440206),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Container(
                       width: 180.0,
                        child:  Text(
                          descp,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      SizedBox(height: 5.0),
                      Text(
                        price,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13.0,
                          color: Color(0xFFFE8A7E)
                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
