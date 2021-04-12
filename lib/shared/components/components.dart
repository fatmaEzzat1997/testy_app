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
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                          color: Colors.black
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