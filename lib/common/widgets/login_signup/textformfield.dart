import 'package:flutter/material.dart' ;

class ETextFormFieldLoginSignup extends StatelessWidget {
  ETextFormFieldLoginSignup({required this.text ,required this.icon});
  String text ;
  Widget icon ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: icon ,
        labelText: text ,
      ),
    );
  }
}