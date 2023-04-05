import 'package:flutter/material.dart';
import '../components/my_alertdialog.dart' as my_alertdialog;

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.title}) : super(key: key);
  final String title;
  final Color mainColor = const Color(0xFFC21E56);

  @override
  Widget build(BuildContext context) {
    //SUBMIT_BUTTON
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return const my_alertdialog.MyAlertDialog(
                  title: "Nav to homescreen or err");
            });
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
