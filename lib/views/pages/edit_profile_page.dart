import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class EditProfilePage extends StatefulWidget {
  final String initialUsername;
  final String initialSubject;
  const EditProfilePage({
    super.key,
    required this.initialUsername,
    required this.initialSubject,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController usernameController;
  late TextEditingController subjectController;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController(text: widget.initialUsername);
    subjectController = TextEditingController(text: widget.initialSubject);
  }

  Future<void> saveProfile() async {
    final userId = Supabase.instance.client.auth.currentUser?.id;
    if (userId == null) return;

    final updates = {
      'id': userId,
      'username': usernameController.text.trim(),
      'subject': subjectController.text.trim(),
    };

    final response = await Supabase.instance.client
        .from('profiles')
        .upsert(updates);

    if (!mounted) return;
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Profile')),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 12),
            DropdownButtonFormField<String>(
              value: subjectController.text.isNotEmpty
                  ? subjectController.text
                  : null,
              items: ['Math', 'Physics', 'Biology', 'CS', 'History', 'Art']
                  .map(
                    (subject) =>
                        DropdownMenuItem(value: subject, child: Text(subject)),
                  )
                  .toList(),
              onChanged: (value) {
                subjectController.text = value ?? '';
              },
              decoration: const InputDecoration(labelText: 'Subject'),
            ),
            SizedBox(height: 24),
            FilledButton(onPressed: saveProfile, child: Text('Save changes')),
          ],
        ),
      ),
    );
  }
}
