import '../database.dart';

class Aq10Table extends SupabaseTable<Aq10Row> {
  @override
  String get tableName => 'aq10';

  @override
  Aq10Row createRow(Map<String, dynamic> data) => Aq10Row(data);
}

class Aq10Row extends SupabaseDataRow {
  Aq10Row(super.data);

  @override
  SupabaseTable get table => Aq10Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get item => getField<String>('item')!;
  set item(String value) => setField<String>('item', value);

  String get questions => getField<String>('questions')!;
  set questions(String value) => setField<String>('questions', value);
}
