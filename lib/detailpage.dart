import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  String foodName;
  String price;
  String imgpath;
  Detailpage(
      {required this.foodName, required this.price, required this.imgpath});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    // image: DecorationImage(
                    //     image: AssetImage('as/1.jpg'), fit: BoxFit.cover),
                    color: Color(0xFF5AC035),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    )),
              ),
              Positioned(
                top: 50,
                left: (MediaQuery.of(context).size.width / 2) - 125,
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(
                        image: AssetImage(imgpath), fit: BoxFit.cover),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    icon: Icon(Icons.more_horiz),
                    color: Colors.white,
                    onPressed: () {}),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(foodName,
                    style: TextStyle(
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25)),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text(
                      '4.9',
                      style: TextStyle(
                        fontFamily: 'monserrat',
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                      size: 16,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      price,
                      style: TextStyle(
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                      width: 125,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFFEDFEE5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.remove_circle_outline),
                              color: Color(0xFF5CB238),
                              onPressed: () {}),
                          Text(
                            "3",
                            style: TextStyle(
                                fontFamily: "montserrat",
                                fontSize: 20,
                                color: Color(0xFF5CB238)),
                          ),
                          IconButton(
                              icon: Icon(Icons.add_circle),
                              color: Color(0xFF5AC035),
                              onPressed: () {})
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "About the food",
                  style: TextStyle(
                    fontFamily: "montserrat",
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: Text(
                    "This like home-cooked food is low salt and low oil with balanced nutrition selected from high-quality ingredients.This delicious food maybe your best healthy choice  ",
                    style: TextStyle(
                      fontFamily: "montserrat",
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF5AC035)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Total",
                        style: TextStyle(
                          fontFamily: "montserrat",
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "\$84.00",
                        style: TextStyle(
                          fontFamily: "montserrat",
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
