import 'package:flutter_helloworld/models/Examination.dart';

class ExaminationService {
  List<Examination> getExamination() {
    return [
      Examination(query: "Is Titanic biggest ship ever?", answer: false),
      Examination(
          query: "Are chicken count greater then human count?", answer: true),
      Examination(query: "Are butterfly's lifetime one day?", answer: false),
      Examination(query: "Is the world flat?", answer: false),
      Examination(query: "Is cashews a part of tree stalk?", answer: true),
      Examination(
          query: "Have Fatih Sultan Mehmet ever been eat potatoes?",
          answer: false),
      Examination(query: "Congratulations, You have done...", answer: false),
    ];
  }
}
