//import 'package:pandemic/utils/config.dart';

import '../domain/model/questions.dart';
import 'config.dart';

void createQuestions() {
  questions.add(Questions("Bu çok satırlı bir sorudur?", 0, [
    [0.25, -100, -0.18, -98, 7],
    [-0.25, 100, 0.18, 98, 7]
  ]));
}
