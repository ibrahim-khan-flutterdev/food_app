import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstButton extends StatelessWidget {
  Function onPressed;
  Text title;

   ConstButton({Key? key,required this.onPressed,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton( onPressed:()=>onPressed(),child:title);
  }
}
