import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:testy_app/shared/colors.dart';
import 'package:testy_app/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
   static const String id='LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: ListView(
        children: [
          Column(
              children: [
                Image(
                    image:AssetImage('images/assets/icon.png'),
                  width:MediaQuery.of(context).size.width*0.3,
                  height:MediaQuery.of(context).size.height*0.3 ,
                )
              ],
            ),
          SizedBox(
            height:MediaQuery.of(context).size.height*0.01 ,
          ),
          CustomTextField(
            text: 'Email',
            hint: 'ziead@gmail.com',
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.03),
          CustomTextField(
            text:' Password',
            hint: '************',
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.06),
          DefaultButton(textButton: 'LOGIN'),
          SizedBox(height: MediaQuery.of(context).size.height*0.01),
          DefaultButton(textButton: 'SING UP'),
          SizedBox(height: MediaQuery.of(context).size.height*0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Forgot Your Password ?'),
            ],
          )
        ],
      ),
    );
  }
}
