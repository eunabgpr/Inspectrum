import '/components/survey_quizlet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'aq1_widget.dart' show Aq1Widget;
import 'package:flutter/material.dart';

class Aq1Model extends FlutterFlowModel<Aq1Widget> {
  ///  Local state fields for this page.

  List<dynamic> jsonquestion = [];
  void addToJsonquestion(dynamic item) => jsonquestion.add(item);
  void removeFromJsonquestion(dynamic item) => jsonquestion.remove(item);
  void removeAtIndexFromJsonquestion(int index) => jsonquestion.removeAt(index);
  void insertAtIndexInJsonquestion(int index, dynamic item) =>
      jsonquestion.insert(index, item);
  void updateJsonquestionAtIndex(int index, Function(dynamic) updateFn) =>
      jsonquestion[index] = updateFn(jsonquestion[index]);

  ///  State fields for stateful widgets in this page.

  // Models for SurveyQuizlet dynamic component.
  late FlutterFlowDynamicModels<SurveyQuizletModel> surveyQuizletModels;

  @override
  void initState(BuildContext context) {
    surveyQuizletModels = FlutterFlowDynamicModels(() => SurveyQuizletModel());
  }

  @override
  void dispose() {
    surveyQuizletModels.dispose();
  }
}
