import 'package:flutter/rendering.dart';
import 'package:flutter_helloworld/models/Examination.dart';
import 'package:flutter_helloworld/service/ExaminationService.dart';

class ExaminationController {
  ExaminationService _examinationService = ExaminationService();

  List<Examination> getExaminations() {
    return _examinationService.getExamination();
  }
}
