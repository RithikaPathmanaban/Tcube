import 'dart:collection';
// import 'package:kids_learning/Model/m_learn.dart';

// import 'package:kids_learning/memory/main.dart';
// import 'package:kids_learning/views/Alphabet_Screen.dart';
// import 'package:kids_learning/views/Animal_Screen.dart';
// import 'package:kids_learning/views/alphabet_Screen2.dart';
// import 'package:kids_learning/views/colors_screen.dart';
// import 'package:kids_learning/views/number_screen.dart';
// import 'package:kids_learning/views/sensory.dart';

// import '../../views/Animal_Screen.dart';
import 'package:kids_learning/detailspage/underdevelopment.dart';
import 'package:kids_learning/grade4training/memory/main.dart';

import '../Model/m_learn.dart';
// import '../memgame/main.dart';

import '../views/Animal_Screen.dart';
import '../views/sensory.dart';
import '../views/homophones.dart';
import '../views/colors_screen.dart';
import '../views/symbols.dart';

class ControllerLearn {
  static List<ModelLearn> _dataLearn = [
    // ModelLearn(
    //   image: 'assets/images/arabica.png',
    //   title: 'تعلم الحروف',
    //   page: AlphabetScreen(),
    // ),
    ModelLearn(
      title: 'Reading',
      image: 'assets/images/reading.png',
      page: homophones(),
    ),
    // ModelLearn(
    //   title: 'Mathematics',
    //   image: 'assets/images/alphabet.png',
    //   page: AlphabetScreen1(),
    // ),
    ModelLearn(
      title: 'Mathematics',
      image: 'assets/images/no.png',
      page: symbols(),
    ),

    ModelLearn(
      title: 'Memory',
      image: 'assets/images/memory.png',
      page: memory(),
    ),

    ModelLearn(
      title: 'Sensory abilities',
      image: 'assets/images/sensory.png',
      page: sensorygrade4(),
    ),
    ModelLearn(
      title: 'Attention/Hyperactivity',
      image: 'assets/images/attention.png',
      page: underdevelopment(),
    ),
    ModelLearn(
      title: 'executive functioning',
      image: 'assets/images/executive.png',
      page: underdevelopment(),
    ),
    ModelLearn(
      title: 'Writing',
      image: 'assets/images/writing.png',
      page: underdevelopment(),
    ),
    ModelLearn(
      title: 'Oral language',
      image: 'assets/images/oral.png',
      page: underdevelopment(),
    ),
    ModelLearn(
      title: 'Social skills',
      image: 'assets/images/social.png',
      page: underdevelopment(),
    ),
  ];

  static UnmodifiableListView<ModelLearn> get dataLearn =>
      UnmodifiableListView(_dataLearn);

  static int get dataLength => _dataLearn.length;
}