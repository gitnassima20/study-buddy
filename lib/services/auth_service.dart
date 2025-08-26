import 'package:supabase_flutter/supabase_flutter.dart';

// TODO: Clear prints statements later

Future<void> signUp(String email, String password, String username) async {
  final response = await Supabase.instance.client.auth.signUp(
    email: email,
    password: password,
  );

  final user = response.user;
  if (user != null) {
    print('✅ Signed up as: ${response.user!.email}');

    // Update the username in the profiles table
    await Supabase.instance.client
        .from('profiles')
        .update({'username': username})
        .eq('id', user.id);

    print('✅ Username saved to profiles');
  }
  if (response.user != null) {
  } else {
    print('❌ Sign-up failed');
  }
}

Future<void> signIn(String email, String password) async {
  final response = await Supabase.instance.client.auth.signInWithPassword(
    email: email,
    password: password,
  );

  if (response.user != null) {
    print('✅ Signed in as: ${response.user!.email}');
  } else {
    print('❌ Sign-in failed');
  }
}
