import 'package:flutter/material.dart';
import 'package:app_aves/pages/page1/1st_tab.dart';
import 'package:app_aves/pages/page2/2nd_tab.dart';
import 'package:app_aves/pages/page3/3rd_tab.dart';
import 'package:app_aves/pages/page4/4th_tab.dart';
import 'package:app_aves/pages/page5/5th_tab.dart';


class Controler extends StatefulWidget {
  Controler({Key? key}) : super(key: key);

  @override
  State<Controler> createState() => _ControlerState();
}

class _ControlerState extends State<Controler> {
   @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Aves Brasileiras'),
            bottom: const TabBar(
              tabs:[
                //tudo isso vai ser modificado para as telas
                Tab(
                  icon: Icon(
                    Icons.flutter_dash_outlined,
                    color: Colors.white
                ),
                ),
                Tab(
                  icon: Icon(
                    Icons.emoji_nature,
                    color: Colors.white
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.sunny,
                    color: Colors.white
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.spa_rounded,
                  color: Colors.white
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.local_florist,
                  color: Colors.white
                  ),
                ),
                ],
                ),
        ),

        body:  const TabBarView(
          //physics: NeverScrollableScrollPhysics(),
          children: [
            
            // TELA 1
            PageOne(),

            // TELA 2
            PageTwo(),

            // TELA 3
            PageThree(),

            // TELA 4
            PageFour(),

            // TELA 5
            PageFive(),
          ],
          ),
        ),
      );
  }
}