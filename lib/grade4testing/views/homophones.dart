import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/detailspage/gradelist.dart';
// import 'package:kids_learning/Component/card_screen_Alphabet.dart';
import '../Component/appBar.dart';
import '../Component/card_screen_Alphabet.dart';
// import '/Component/appBar.dart';

import '../Controller/c_screenl.dart';
import '../quize/Quiz1.dart';
import 'home_page.dart';

class homophones1 extends StatefulWidget {
  @override
  _homophones1State createState() => _homophones1State();
}

class _homophones1State extends State<homophones1> {
  AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 170, 110),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(150),
                bottomLeft: Radius.circular(150))),
        title: Text(
          'Homophones',
          style: TextStyle(
            fontStyle: FontStyle.italic, fontSize: 30,
            //  shadows: [
            // Shadow(
            // offset: Offset(1.5, 1.5),
            color: Colors.white,

            //   blurRadius: 3,
            // )
            // ]
          ),
        ),
        centerTitle: true,
        // actions: [
        //   //app icon
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Icon(Icons.arrow_back_ios)
        //   )
        // ],
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage1()))),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ScreenRowAlphabet(
            onpressedBtn1: () {}, onpressedBtn2: (() {}),
            // onpressedBtn1: () => onClick(newAudio: PathAudiohomophones.homo1),
            // onpressedBtn2: () => onClick(newAudio: PathAudiohomophones.homo2),
            image1: Image.asset(
              'assets/images/homo1.png',
            ),
            image2: Image.asset(
              'assets/images/homo2.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            // onpressedBtn1: () => onClick(newAudio: PathAudiohomophones.homo3),
            // onpressedBtn2: () => onClick(newAudio: PathAudiohomophones.homo4),
            onpressedBtn1: () {}, onpressedBtn2: () {},
            image1: Image.asset(
              'assets/images/homo3.png',
            ),
            image2: Image.asset(
              'assets/images/homo4.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            // onpressedBtn1: () => onClick(newAudio: PathAudiohomophones.homo5),
            // onpressedBtn2: () => onClick(newAudio: PathAudiohomophones.homo6),
            onpressedBtn1: () {},
            onpressedBtn2: () {},
            image1: Image.asset(
              'assets/images/homo5.png',
            ),
            image2: Image.asset(
              'assets/images/homo6.png',
            ),
          ),

          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.i),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.j),
          //   image1: Image.asset(
          //     'assets/images/i1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/j1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.k),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.l),
          //   image1: Image.asset(
          //     'assets/images/k1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/l1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.m),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.n),
          //   image1: Image.asset(
          //     'assets/images/m1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/n1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.o),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.p),
          //   image1: Image.asset(
          //     'assets/images/o1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/p1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.q),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.r),
          //   image1: Image.asset(
          //     'assets/images/q1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/r1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.s),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.t),
          //   image1: Image.asset(
          //     'assets/images/s1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/t1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.u),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.v),
          //   image1: Image.asset(
          //     'assets/images/u1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/v1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.w),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.x),
          //   image1: Image.asset(
          //     'assets/images/w1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/x1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.y),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.z),
          //   image1: Image.asset(
          //     'assets/images/y1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/z1.png',
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quze()),
                );
              },
              child: Text('Parent Test'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 243, 170, 110),
                side: BorderSide(
                  color: Color.fromARGB(255, 246, 133, 13),
                  width: 1,
                ),
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontStyle: FontStyle.normal),
              ),
            ),
          )
        ]),
      )),
    );
  }

  void onClick({
    required String newAudio,
  }) async {
    audioPlayer.stop();
    audioPlayer = await audioCache.play(newAudio);
  }
}
