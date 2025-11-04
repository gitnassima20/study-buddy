import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

User? getCurrentUser() {
  return supabase.auth.currentUser;
}
