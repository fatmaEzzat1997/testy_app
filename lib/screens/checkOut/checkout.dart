import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testy_app/shared/components/components.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Check Out'),

        ),
        body: ListView(
          children: [
            Container(
              color: Colors.amber.shade200,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'After your click on checkout and place order you can not change any personal details &you can not cancel order after restaurant accept it',
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.deepOrange,


                      ),
                    ),


                  ],

                ),


              ),

            ),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.02 ,
            ),
            CustomTextField(text: 'Phone Number', hint: 'Enter Your Phone Number'),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.02 ,
            ),
            CustomTextField(text: 'Area', hint: 'Shoubra-Masr/Dokki'),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.02 ,
            ),
            CustomTextField(text: 'Street Name/Number', hint: 'Enter Street Name'),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.02 ,
            ),
            CustomTextField(text: 'building Number', hint: '26'),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.02 ,
            ),
            CustomTextField(text: 'Floor Number', hint: '4'),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.02 ,
            ),
              TextS(),


              Button(
                text: ('CHECKOUT AND PLACE ORDER'),
              ),


          ],
        ),



    );
  }
}
