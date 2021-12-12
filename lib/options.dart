class Options {
  String difficulty = "easy";
  List difficultyOptions = ["easy", "medium", "hard"];

  void setDifficulty(String Difficulty) {
    if (difficultyOptions.contains(Difficulty)) {
      difficulty = Difficulty;
      print("Selected difficulty is: " + difficulty);
    } else {
      print(
          "You must select a value which is in difficulty options. Active difficulty is easy.");
    }
  }
}
