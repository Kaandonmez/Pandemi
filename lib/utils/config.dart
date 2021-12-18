import 'dart:math';

import 'package:pandemic/domain/model/resources.dart';

import 'utils.dart';

String difficulty = "easy";
List difficultyOptions = ["easy", "medium", "hard"];
var utils = Utils();
var humans = [];
var families = [];
var hobbies = [];
var populationPyramide = [];
var rnd = Random();
var covid = [];
var questions = [];
int familyCounter = 0;
int chance = 0;
int yetiskinMin = 13900;
int yetiskinMax = 24699;
int cocukMin = 24700;
int cocukMax = 99999;
int yasliMin = 0;
int yasliMax = 13899;
Resources resources = Resources();

void setDifficulty(String Difficulty) {
  if (difficultyOptions.contains(Difficulty)) {
    difficulty = Difficulty;
    print("Selected difficulty is: " + difficulty);
  } else {
    print(
        "You must select a value which is in difficulty options. Active difficulty is easy.");
  }
}
