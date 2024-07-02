import 'package:flutter/material.dart';
import 'package:kids_learning/detailspage/gradelist.dart';
// import 'package:kids_learning/grade1/views/home_page.dart';
import 'package:kids_learning/kindergardentesting/views/home_page.dart';
import 'package:kids_learning/kindergardertraining/views/home_page.dart';

import '../../grade1testing/views/home_page.dart';

// import '../views/home_page.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);

  final int resultScore;
  final VoidCallback resetHandeler;

  const Result(this.resultScore, this.resetHandeler, {required int userScore});

  String get resuldPhrase {
    String resultText;
    if (resultScore >= 20) {
      resultText =
          "You have completes the screening test😍\nClick End Quiz to end the test";
    } else {
      resultText = "Your child has faild the reading test.Take the training.😥";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resuldPhrase,
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          // Center(
          //   child: Text(
          //     "\n\nYour child Score is: $resultScore\n\n",
          //     style: TextStyle(
          //         fontSize: 20,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: resetHandeler,
                    child: Text('Reset quiz'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 54, 196, 231),
                      side: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.normal),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => gradelist()));
                    },
                    child: Text('End Quiz'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 54, 196, 231),
                      side: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.normal),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
