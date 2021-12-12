import 'dart:io';
import 'utils/config.dart';

void main() {
  gameStarter();
}
void gameStarter() {
  print(
      "Please select game difficulty: " + difficultyOptions.toString());
  setDifficulty(stdin.readLineSync()!);
  utils.createHumans(difficulty); //!create hobbie bunun içinde bulunuyor.
  utils.createFamilies();
  utils.covidSpread();
}