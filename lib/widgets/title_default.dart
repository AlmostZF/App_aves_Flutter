
import 'package:flutter/material.dart';


class TitleCustom extends StatelessWidget {
  final String title;

  const TitleCustom({Key? key, required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
       Text(title, style: TextStyle(color: Color(0xff002776), fontWeight: FontWeight.w800),),
      ],
    );
  }
}
