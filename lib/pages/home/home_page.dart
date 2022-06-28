
import 'package:app_aves/controler/controler_pages.dart';
import 'package:app_aves/widgets/title_default.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

     Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Container(
                  child: SingleChildScrollView(
                  child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: size.height*0.24)),
                    const Center(
                    child: Text("Aves brasileiras", style: TextStyle(fontSize: 30, color: Color(0xff002776)),) ,
                    ),
    
                  Padding(padding: EdgeInsets.only(top: size.width*0.06)),
    
                   Center(
                  child: SizedBox(
                  width: size.width*0.90,
                  height: size.height*0.35,
                  child: Center(
                    child: Image.asset('assets/img/bird.png')
                    ),
                  ),
                   ),
                   
                  Padding(padding: EdgeInsets.only(top:size.width*0.05)),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Controler())
                      );
                    },
                     child: Text('Abrir'),),
    
                  Padding(padding: EdgeInsets.only(bottom: size.width*0.04)),
    
    
                  ],
                ),),
        ),
      ],
    );
  }
}