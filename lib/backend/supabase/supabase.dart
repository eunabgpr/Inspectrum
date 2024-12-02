import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://jhwivghunuhnegjznzob.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Impod2l2Z2h1bnVobmVnanpuem9iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI3NjgwNzQsImV4cCI6MjA0ODM0NDA3NH0.QBHPSrswVXu-qlY9D9tPBF-o7iXj0AaBO9sFN5PLeqs';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
