import 'package:flutter/material.dart';
import 'package:testy_app/shared/components/components.dart';

class YourCart extends StatefulWidget {
  @override
  _YourCartState createState() => _YourCartState();
}

class _YourCartState extends State<YourCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: ListView(children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(23),
          ),
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(15),
          height: 150,
          width: 300,
          child: Row(
            children: [
              SizedBox(
                  child: Image(
                    image: (ExactAssetImage('images/assets/icon.png')),
                  )),
              Expanded(
                child: Column(children: <Widget>[
                  Text(
                    'CHICKEN FINGERS KIDS MEAL',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    '50LE',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  Text(
                    'category:kidsMeals',
                    style: TextStyle(color: Colors.grey),
                  )
                ]),
              )
            ],
          ),
        ),


        SizedBox(
          height: MediaQuery.of(context).size.height * 0.40,
        ),
        TextS(
          price: ('50 L.E'),
        ),
        Button(
          text: ('PROCESS TO CHECKOUT'),
        ),

      ]),
    );
  }
}
