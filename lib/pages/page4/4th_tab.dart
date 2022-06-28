import 'package:flutter/material.dart';
import 'package:app_aves/widgets/title_default.dart';
import 'package:app_aves/widgets/text_custom.dart';

import 'package:just_audio/just_audio.dart';



class PageFour extends StatefulWidget {
  @override

  const PageFour ({Key? key,}) : super(key: key);



  _PageFourState createState() => _PageFourState();
}
  class _PageFourState extends State<PageFour> {

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
                child: TitleCustom(title: 'Cara suja do pantanal'),
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
                  child: Image.asset('assets/img/Cara-suja.png'),
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
                  await player.setAsset('assets/audio/Cara-suja.mp3');
                  player.play();
                },
                child: Icon(Icons.play_arrow),),

             Padding(
              padding: EdgeInsets.only(
                bottom: size.width*0.03)),

              //card
              const Center(
                child: TextCustom(text:
                'Nome cientifico: Pyrrhura molinae \nNome da especia: P. molinae \nCaracteristica: Mede cerca de 25 cm. Com capuz marrom, colar cinza largo, extremos das asas por cima azul e por baixo verde-amarelado, rabo e parte do ventre vermelho-opaco.'
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

//AVE 4 cara suja do pantanal https://www.wikiaves.com.br/wiki/cara-suja-do-pantanal