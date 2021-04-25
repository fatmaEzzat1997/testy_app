import 'package:flutter/material.dart';

import '../colors.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String hint;
  final String title;
  TextEditingController controller;


  CustomTextField({@required this.text,@required this.hint,@required controller,@required this.title});

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
                controller: controller,
                validator: (value){
                  if (value.isEmpty){
                    return title;
                  }
                  return null ;
                },

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
  final String price;

  const TextS({Key key, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Total Price:$price',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20)),


      ],
    );
  }
}
class Button extends StatelessWidget {
  final String text;
  Function function;
      Button({@required this.text,@required this.function});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: FlatButton(

        shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(20)
        ),
        color:  Colors.green,
        onPressed: function,

        child: Text(text,
          style: TextStyle(color: Colors.white),
        ),

      ),
    );
  }
}

