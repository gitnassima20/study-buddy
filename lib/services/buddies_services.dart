import 'package:flutter_app/services/user_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

//TODO save it to cache or local storage
Future<String?> getCurrentUserSubject() async {
  final user = getCurrentUser();
  if (user == null) return null;

  final data = await supabase
      .from('profiles')
      .select('subject')
      .eq('id', user.id)
      .maybeSingle();

  return data?['subject'];
}

Future<List<Map<String, dynamic>>> getBuddies() async {
  final user = getCurrentUser();
  if (user == null) return [];

  final subject = await getCurrentUserSubject();
  if (subject == null) return [];

  final response = await supabase
      .from('profiles')
      .select('id, usernamen, last_seen')
      .eq('subject', subject)
      .neq('id', user.id);

  return response;
}
