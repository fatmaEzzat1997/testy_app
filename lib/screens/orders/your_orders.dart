import 'dart:ui';

import 'package:flutter/material.dart';
class YourOrders extends StatefulWidget {
  @override
  _YourOrdersState createState() => _YourOrdersState();
}

class _YourOrdersState extends State<YourOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
        actions: [

          IconButton(
              icon: Icon(Icons.home ),
              onPressed: (){}
              ),
        ],
      ),
      body:ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(23),
            ),
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(30),
            height: 200,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Order Name: CHOCOLATE MINI CAKE'),
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.02 ,
                ),
                Text('--'),
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.05,
                ),
                Text('Date/Time:2021-20-20 21:17:38.000'),
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.03 ,
                ),
                Text('Total Price:35')
              ],
            ),



          ),
        ],
      )
    );
  }
}
