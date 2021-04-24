import 'package:flutter/material.dart';

import '../colors.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String hint;


  CustomTextField({@required this.text,@required this.hint});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                maxLines: 2,
                decoration: InputDecoration(
                  labelText: text,
                  hintText:hint,
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.white
                      )


                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.white
                      )

                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
class DefaultButton extends StatelessWidget {
  final String textButton;
  DefaultButton({@required this.textButton});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        color:  defaultColor,
        onPressed: (){},
        child: Text(textButton,
          style: TextStyle(color: Colors.white),
        ),

      ),

    );
  }
}
class TextS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Total Price:',),
        Text('50 L.E',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)

      ],
    );
  }
}
class Button extends StatelessWidget {
  final String text;
      Button({@required this.text});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: FlatButton(

        shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(20)
        ),
        color:  Colors.green,
        onPressed: (){},
        child: Text(text,
          style: TextStyle(color: Colors.white),
        ),

      ),
    );
  }
}

