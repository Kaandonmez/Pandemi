import 'dart:io';
import 'config.dart';

void main() {
  gameStarter();
}
void gameStarter() {
  print(
      "Please select game difficulty: " + options.difficultyOptions.toString());
  options.setDifficulty(stdin.readLineSync()!);
  utils.createHumans(
      options.difficulty); //!create hobbie bunun içinde bulunuyor.
  utils.createFamilies();
  utils.covidSpread();
}