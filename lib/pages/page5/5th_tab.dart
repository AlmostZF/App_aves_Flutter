import 'package:flutter/material.dart';
import 'package:app_aves/widgets/title_default.dart';
import 'package:app_aves/widgets/text_custom.dart';


import 'package:just_audio/just_audio.dart';



class PageFive extends StatefulWidget {
  @override

  const PageFive ({Key? key,}) : super(key: key);



  _PageFiveState createState() => _PageFiveState();
}
  class _PageFiveState extends State<PageFive> {

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
                child: TitleCustom(title: 'Pica-pau-bufador'),
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
                  child: Image.asset('assets/img/Picapau.png'),
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
                  await player.setAsset('assets/audio/Picapau.mp3');
                  player.play();
                },
                child: Icon(Icons.play_arrow),),

              Padding(
                padding: EdgeInsets.only(
                  top:size.width*0.03)),
              
              const Center(
                child: TextCustom(text:
                'Nome cientifico: Piculus flavigula \nNome da especia: P. flavigula \nCaracteristica: Mede entre 19 e 20 centímetros de comprimento e pesa entre 44 e 63 gramas. O macho possui o alto da cabeça e a nuca vermelhos, com as laterais da cabeça amarelas; a fêmea apresenta o alto da cabeça amarelo-oliváceo, as laterais da cabeça amarelas e apenas um pouco de vermelho na nuca.'
                ),

              ),
               Padding(
                padding: EdgeInsets.only(
                  bottom: size.width*0.02))
              ],
            ),)
    );
  }
}


//AVE 5 https://www.wikiaves.com.br/wiki/pica-pau-bufador?s[]=pica&s[]=pau&s[]=bufador