import 'package:flutter/material.dart';
import 'package:kids_learning/grade3training/main.dart';
import 'package:kids_learning/grade3training/views/home_page.dart';
// import 'package:kids_learning/grade2training/main.dart';
// import 'package:kids_learning/grade1/main.dart';
import 'package:kids_learning/kindergardentesting/main.dart';

import '../grade1testing/main.dart';
import '../grade1training/main.dart';
import '../grade3testing/main.dart';
import '../kindergardertraining/main.dart';
import 'gradelist.dart';

// import 'package:kids_learning/grade1/main.dart';
// import 'package:tcube/login.dart';

class Testtraintrackgrade3 extends StatefulWidget {
  // const Testtraintrack({super.key});

  @override
  State<Testtraintrackgrade3> createState() => _Testtraintrackgrade3State();
}

class _Testtraintrackgrade3State extends State<Testtraintrackgrade3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/m.jpg"), fit: BoxFit.cover),
            ),
            child: Column(children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => gradelist()))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => grade3testing()))),
                  child: Container(
                    alignment: Alignment.center,
                    child: _bannerCard(),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => grade3trainhomepage()))),
                child: Container(
                  alignment: Alignment.center,
                  child: _bannerCard1(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (() {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Center(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.lock,
                              color: Colors.red,
                            ),
                            Text(
                              "Tracking is locked.",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        Container(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Complete the testing and traing\n phase to unlock tracking phase.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
                child: Container(
                  alignment: Alignment.center,
                  child: _bannerCard2(),
                ),
              ),
            ])),
      ),
    );
  }

  Widget _bannerCard() => Container(
        height: 200,
        width: 250,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'TESTING',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Test your child that in which domain he/she is affected.',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      );
  Widget _bannerCard1() => Container(
        height: 200,
        width: 250,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'TRAINING',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Train your child according to your child's test score.",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      );
  Widget _bannerCard2() => Container(
        height: 200,
        width: 250,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: Row(
                  children: [
                    Icon(Icons.lock_rounded),
                    Text(
                      'TRACKING',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Track your child's health record.",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      );
}