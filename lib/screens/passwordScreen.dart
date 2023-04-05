import 'package:flutter/material.dart';
import '../components/my_textfield.dart' as my_textfield;
import '../components/my_button.dart' as my_button;

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final Color mainColor = const Color(0xFFC21E56);
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: const Text('KONTOWIEDERHERSTELLUNG'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Center(
                child: Column(
                  children: [
                    //INPUT_E-MAIL
                    const SizedBox(height: 34),
                    my_textfield.MyTextField(
                      hintText: "E-mail Adresse",
                      obscureText: false,
                      controller: usernameController,
                    ),
                    const SizedBox(height: 34),
                    //SUBMIT_BUTTON
                    const my_button.MyButton(title: "SENDEN"),
                    const SizedBox(height: 34),

                    //TEXT
                    const Divider(color: Colors.black45, thickness: 1),
                    const Text(
                        "Falls du dein Passwort vergessen haben solltest,"
                        " teile uns einfach deine E-Mail Adresse mit, um dieses zurück zu setzen.")
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
