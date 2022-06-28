import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  const TextCustom({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Column(
       children: [
       Text(text, style: TextStyle(color: Color(0xff002776),),textAlign:TextAlign.center,),
      ],
    );
  }
}