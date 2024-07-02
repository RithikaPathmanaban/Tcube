import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:kids_learning/Component/appBar.dart';
// import 'package:kids_learning/Component/card_screens.dart';
// import 'package:kids_learning/Controller/c_screenl.dart';

import '../Component/appBar.dart';
import '../Component/card_screens.dart';
import '../Controller/c_screenl.dart';
import 'home_page.dart';

class sensorygrade4 extends StatefulWidget {
  @override
  _sensorygrade4State createState() => _sensorygrade4State();
}

class _sensorygrade4State extends State<sensorygrade4> {
  String imageView = 'assets/images/sensory.png';
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
            'Sensory abilities',
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
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage2()))),
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ShowImage(image: imageView),
                  SizedBox(height: 2),
                  Expanded(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ScreenRow(
                        onpressedBtn1: () => onClick(
                            newImage: PathImagesensory.neck,
                            newAudio: PathAudiosensory.neck1),
                        onpressedBtn2: () => onClick(
                            newImage: PathImagesensory.palm,
                            newAudio: PathAudiosensory.palm1),
                        onpressedBtn3: () => onClick(
                            newImage: PathImagesensory.trunk,
                            newAudio: PathAudiosensory.trunk1),
                        title1: 'Neck',
                        title2: 'Palm',
                        title3: 'Trunk',
                        btnColor2: Colors.pink,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ScreenRow(
                        onpressedBtn1: () => onClick(
                            newImage: PathImagesensory.toes,
                            newAudio: PathAudiosensory.toes1),
                        onpressedBtn2: () => onClick(
                            newImage: PathImagesensory.fingers,
                            newAudio: PathAudiosensory.fingers1),
                        onpressedBtn3: () => onClick(
                            newImage: PathImagesensory.nails,
                            newAudio: PathAudiosensory.nails1),
                        title1: 'Toes',
                        title2: 'Fingers',
                        title3: 'Nails',
                        btnColor2: Colors.pink,
                      ),
                      SizedBox(height: 20),
                      // ScreenRow(
                      //   onpressedBtn1: () => onClick(
                      //       newImage: PathImagesensory.tongue,
                      //       newAudio: PathAudiosensory.tongue),
                      //   onpressedBtn2: () => onClick(
                      //       newImage: PathImagesensory.knee,
                      //       newAudio: PathAudiosensory.knee),
                      //   onpressedBtn3: () => onClick(
                      //       newImage: PathImagesensory.elbow,
                      //       newAudio: PathAudiosensory.elbow),
                      //   title1: 'Tonuge',
                      //   title2: 'Knee',
                      //   title3: 'Elbow',
                      //   // title3: 'ببغاء',
                      //   btnColor2: Colors.pink,
                      // ),
                    ],
                  ))
                ],
              )),
        ));
  }

  void onClick({required String newImage, required String newAudio}) async {
    setState(() {
      imageView = newImage;
    });
    audioPlayer.stop();
    audioPlayer = await audioCache.play(newAudio);
  }
}