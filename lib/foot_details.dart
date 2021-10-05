import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {


  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        foodItem('assets/steak.png','Strawberry Cream Waffles',7.0,273,false),
        foodItem('assets/steak.png','Croissant blue berry fruit',18.0,241,true),
        foodItem('assets/steak.png','Strawberry Cream Waffles',18.0,273,true),
        foodItem('assets/steak.png','Croissant blue berry fruit',7.0,273,false),



      ],

    );

  }
  foodItem(String imgPath, String foodName, double price,int calCount,bool hasMilk ){
    return Padding(
      padding: EdgeInsets.only(top: 8.0,left: 10.0,right: 10.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0,left: 15.0,right: 15.0),
                  child: Image.asset(imgPath,fit: BoxFit.cover,height: 100.0,width: 100.0,),
                ),
                Positioned(
                  top: 92.0,
                  left: 60.0,
                  child: hasMilk ? Container(
                    height: 15.0,
                    width: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFFF75A4C),
                        style: BorderStyle.solid,
                        width: 0.25,
                      )

                    ),
                    child: Center(
                      child: Text('with Milk',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10.0,
                        color: Color(0xFFF75A4C)
                      ),

                      ),
                    )
                  ) : Container()
                ),

              ],
            ),
            SizedBox(height: 5.0,),
            Container(
              width: 125.0,
              padding: EdgeInsets.only(left: 7.0),
              child: Text(
                foodName,
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF440206),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.only(left: 7.0),
              child: Text(
                '\$ ' + price.toString(),
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                  color: Color(0xFF440206),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: EdgeInsets.only(left: 7.0),
              child: Row(
                children: [
                  Icon(Icons.account_box,color: Color(0xFF440206),size: 15.0),
                  SizedBox(width: 5.0),
                  Text(calCount.toString() +'cal',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  )
                ],
              )

            )

          ],
        ),


      ),
    );




  }
}
