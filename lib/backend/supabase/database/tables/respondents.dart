import '../database.dart';

class RespondentsTable extends SupabaseTable<RespondentsRow> {
  @override
  String get tableName => 'respondents';

  @override
  RespondentsRow createRow(Map<String, dynamic> data) => RespondentsRow(data);
}

class RespondentsRow extends SupabaseDataRow {
  RespondentsRow(super.data);

  @override
  SupabaseTable get table => RespondentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  int get age => getField<int>('age')!;
  set age(int value) => setField<int>('age', value);

  String get gender => getField<String>('gender')!;
  set gender(String value) => setField<String>('gender', value);
}
