import 'package:flutter/material.dart';

class ButtonWithoutImage extends StatelessWidget {
  final String text;
  final Function() pressed;
  const ButtonWithoutImage(
      {super.key, required this.text, required this.pressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.0,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFF5885BC)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        onPressed: pressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Acme',
            fontWeight: FontWeight.w400,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
