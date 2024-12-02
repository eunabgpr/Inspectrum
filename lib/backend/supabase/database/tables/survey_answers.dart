import '../database.dart';

class SurveyAnswersTable extends SupabaseTable<SurveyAnswersRow> {
  @override
  String get tableName => 'survey_answers';

  @override
  SurveyAnswersRow createRow(Map<String, dynamic> data) =>
      SurveyAnswersRow(data);
}

class SurveyAnswersRow extends SupabaseDataRow {
  SurveyAnswersRow(super.data);

  @override
  SupabaseTable get table => SurveyAnswersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  List<dynamic> get answers => getListField<dynamic>('answers');
  set answers(List<dynamic> value) => setListField<dynamic>('answers', value);
}
