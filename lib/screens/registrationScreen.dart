import 'package:flutter/material.dart';
import '../components/my_textfield.dart' as my_textfield;
import '../components/my_button.dart' as my_button;

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //TextInput Controllers
  final vornameController = TextEditingController();
  final nachnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();

  final birthdayController = TextEditingController();
  final Color mainColor = const Color(0xFFC21E56);

  DateTime dateTime = DateTime.now();

  //Show Date Methode
  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: mainColor,
            ),
          ),
          child: child!,
        );
      },
    ).then((value) {
      setState(() {
        dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('REGISTRIERUNG'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
            child: Center(
              child: Column(
                children: [
                  //INPUT FIELDS
                  my_textfield.MyTextField(
                    hintText: "Vorname",
                    obscureText: false,
                    controller: vornameController,
                  ),
                  my_textfield.MyTextField(
                    hintText: "Nachname",
                    obscureText: false,
                    controller: nachnameController,
                  ),
                  my_textfield.MyTextField(
                    hintText: "E-Mail Adresse",
                    obscureText: false,
                    controller: emailController,
                  ),
                  my_textfield.MyTextField(
                    hintText: "Passwort",
                    obscureText: true,
                    controller: passwordController,
                  ),
                  my_textfield.MyTextField(
                    hintText: "Passwort wiederholen",
                    obscureText: true,
                    controller: passwordController2,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: GestureDetector(
                        onTap: _showDatePicker,
                        child: Container(
                          width: 10000,
                          padding: const EdgeInsetsDirectional.fromSTEB(8, 17, 16, 17),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFEFEF),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: Colors.grey,
                                //width: 2.0,
                                //style: BorderStyle.solid
                            ),
                          ),
                          child: Text("Geburtstag: ${dateTime.day}-${DateTime.now().month}-${DateTime.now().year}", style: const TextStyle(fontSize: 16, color: Colors.black54),),
                        ),
                      )),
                  
                  //SUBMIT_BUTTON
                  const SizedBox(height: 64,),
                  const my_button.MyButton(title: "REGISTRIEREN")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
