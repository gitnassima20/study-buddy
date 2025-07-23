import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> signUp(String email, String password) async {
  final response = await Supabase.instance.client.auth.signUp(
    email: email,
    password: password,
  );

  if (response.user != null) {
    print('✅ Signed up as: ${response.user!.email}');
  } else {
    print('❌ Sign-up failed');
  }
}
