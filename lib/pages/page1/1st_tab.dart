import 'package:app_aves/widgets/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:app_aves/widgets/title_default.dart';
import 'package:just_audio/just_audio.dart';



class PageOne extends StatefulWidget {
  @override

  const PageOne ({Key? key,}) : super(key: key);



  _PageOneState createState() => _PageOneState();
}
  class _PageOneState extends State<PageOne> {

  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
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
                child: TitleCustom(title: 'Coruja Buraqueira'),
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
                  child: Image.asset('assets/img/Coruja.png'),
                  borderRadius: const BorderRadius.all(Radius.circular(10)) ,
                )
                ),
              ),
               ),
               
              Padding(
                padding: EdgeInsets.only(
                  top: size.width*0.03),
                  ),
              ElevatedButton(
                onPressed: () async {
                  await player.setAsset('assets/audio/Coruja.mp3');
                  player.play();
                },
                child: Icon(Icons.play_arrow),),

              Padding(
                padding:EdgeInsets.only(
                  bottom: size.width*0.03),
                  ),

              //card
              const Center(
                child: TextCustom(text:
                  'Nome cientifico: Athene cunicularia \nNome da especia:  A. cunicularia \nCaracteristica Ave de pequeno porte, seu tamanho médio é de 21,5 a 28,5 cm (machos) e de 22 a 25 cm (fêmeas). Possui a cabeça redonda, sem penachos e os olhos estão dispostos lado a lado, num mesmo plano.',
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
// https://www.wikiaves.com.br/wiki/coruja-buraqueira?s[]=coruja&s[]=buraqueira