import 'package:flutter/material.dart';
import 'package:app_aves/widgets/title_default.dart';

import '../../widgets/text_custom.dart';
import 'package:just_audio/just_audio.dart';



class PageTwo extends StatefulWidget {
  @override

  const PageTwo ({Key? key,}) : super(key: key);



  _PageTwoState createState() => _PageTwoState();
}
  class _PageTwoState extends State<PageTwo> {

  late AudioPlayer player;
  late AudioPlayer player2;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player2 = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    player2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
            child: Column(
            children:[
             Padding(
              padding: EdgeInsets.only(
                top: size.width*0.03, bottom: size.height*0.02)),
                const Center(
                child: TitleCustom(title: 'Arara-Azul'),
                ),

              Padding(
                padding: EdgeInsets.only(
                  top: size.width*0.02)),

               Center(
              child: SizedBox(
      	      width: size.width*0.90,
              height: size.height*0.35,
              child: Center(
                child: ClipRRect (
                  child: Image.asset('assets/img/Arara-Azul.png'),
                  borderRadius: const BorderRadius.all(Radius.circular(10)) ,
                )
                ),
              ),
               ),

              Padding(
                padding: EdgeInsets.only(
                  top:size.width*0.03)),

              ElevatedButton(
                onPressed: () async {
                  await player.setAsset('assets/audio/Arara-Azul.mp3');
                  player.play();
                },
                child: Icon(Icons.play_arrow),),

              Padding(
                padding: EdgeInsets.only(
                  bottom: size.width*0.03)),

              const Center(
                 child: TextCustom(text:
                 'Nome cientifico: Anodorhynchus hyacinthinus \nNome da especia:   A. hyacinthinus \nCaracteristica: Mede cerca de 98 centímetros de comprimento e pesa 1,5 quilo. Base do bico e anel ocular nus e de cor amarela, partes internas das asas e cauda negras'
                 )
              ),
               Padding(
                padding: EdgeInsets.only(
                  bottom: size.width*0.02,))
              ],
            ),),
    );
  }
}

 // [Text('AVE 2 Arara azul https://www.wikiaves.com.br/wiki/arara-azul')],