import 'package:flutter/material.dart';
import '../components/my_textfield.dart' as my_textfield;
import '../components/my_button.dart' as my_button;
import 'passwordScreen.dart' as password_screen;
import 'registrationScreen.dart' as registration_screen;


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //TextInput Controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final Color mainColor = const Color(0xFFC21E56);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
            child: Center(
              child: Column(
                children: [
                  //LOGO_AREA
                  //const SizedBox(height: 34),
                  Icon(Icons.lock, size: 125, color: mainColor),
                  Text(
                    "Pfox",
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),

                  const SizedBox(height: 48),
                  //INPUT_AREA
                  my_textfield.MyTextField(
                    hintText: "E-mail Adresse",
                    obscureText: false,
                    controller: usernameController,
                  ),
                  //const SizedBox(height: 16),
                  my_textfield.MyTextField(
                    hintText: "Passwort",
                    obscureText: true,
                    controller: passwordController,
                  ),

                  const SizedBox(height: 8),
                  //FORGOT_PASSWORD
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const password_screen.PasswordScreen()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Row(
                          children: const [
                            Text(
                              "Passwort vergessen?",
                              style:
                              TextStyle(color: Colors.indigo, fontSize: 16),
                            ),
                          ],
                        ),
                      )),

                  const SizedBox(height: 32),
                  //SUBMIT_BUTTON
                  const my_button.MyButton(
                    title: "ANMELDEN",
                  ),

                  const SizedBox(height: 32),
                  //CONTINUE WITH GOOGLE
                  Row(
                    children: const [
                      Expanded(
                          child: Divider(color: Colors.black54, thickness: 1)),
                      Text("    ODER    "),
                      Expanded(
                          child: Divider(
                            color: Colors.black54,
                            thickness: 1,
                          )),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Image(
                            image: AssetImage('assets/googleIcon.png'),
                            height: 56),
                      ),
                      SizedBox(width: 60),
                      Icon(Icons.apple_sharp, size: 72),
                    ],
                  ),

                  const SizedBox(height: 72),
                  //REGISTRATION
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Noch kein Mitglied?",
                          style: TextStyle(fontSize: 16)),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const registration_screen.RegistrationScreen()),
                          );
                        },
                        child: const Text(" Jetzt kostenlos registrieren.",
                            style:
                            TextStyle(color: Colors.indigo, fontSize: 16)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
