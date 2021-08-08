import 'package:flutter/material.dart';
import './detailpage.dart';

class Buildlist extends StatelessWidget {
  String foodName;
  String price;
  String imgpath;

  Buildlist(
      {required this.foodName, required this.price, required this.imgpath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              Detailpage(foodName: foodName, price: price, imgpath: imgpath),
        ));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                )
              ]),
          child: Stack(
            children: <Widget>[
              Container(
                height: 175,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Color(0xFFACBEA3)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
              ),
              Hero(
                  tag: imgpath,
                  child: Container(
                    height: 175,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgpath), fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                  )),
              Positioned(
                  top: 160,
                  right: 20,
                  child: Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 30,
                      width: 20,
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 17,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                    ),
                  )),
              Positioned(
                  top: 180,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(foodName,
                          style: TextStyle(
                              fontFamily: 'montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 14)),
                      SizedBox(height: 3),
                      Container(
                        width: 175,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                    fontFamily: 'monserrat',
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 3),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14,
                                ),
                              ],
                            ),
                            Text(
                              price,
                              style: TextStyle(
                                fontFamily: 'montserrat',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
