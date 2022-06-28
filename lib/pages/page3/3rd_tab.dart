import 'package:flutter/material.dart';
import 'package:app_aves/widgets/title_default.dart';
import 'package:app_aves/widgets/text_custom.dart';

import 'package:just_audio/just_audio.dart';



class PageThree extends StatefulWidget {
  @override

  const PageThree ({Key? key,}) : super(key: key);



  _PageThreeState createState() => _PageThreeState();
}
  class _PageThreeState extends State<PageThree> {

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
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: size.width*0.03, bottom: size.height*0.02)),
                const Center(
                child: TitleCustom(title: 'Arara-canindé'),
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
                  child: Image.asset('assets/img/Arara-caninde.png'),
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
                  await player.setAsset('assets/audio/Arara-Caninde.mp3');
                  player.play();
                },
                child: Icon(Icons.play_arrow),),

              Padding(
                padding: EdgeInsets.only(
                  bottom: size.width*0.03)),

              //card
              const Center(
                 child: TextCustom(text:
                 'Nome cientifico: Ara ararauna \nNome da especia: A. ararauna \nCaracteristica: Mede cerca de 80 centímetros de comprimento. Grande e de cauda longa. coloração azul ultramarino no dorso, e amarelo-dourado na parte inferior desde a face, ventre até o rabo, garganta com linha negra e área nua na cabeça com linha de penas negras'
                 ),
              ),
              Padding(
                      padding: EdgeInsets.only(
                        bottom: size.width*0.02,),
                        )
              ],
            ),),
    );
  }
}

//AVE 3 Arara canindé https://www.wikiaves.com.br/wiki/arara-caninde