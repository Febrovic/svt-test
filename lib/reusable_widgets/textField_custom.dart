import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String text;

  const TextFieldCustom(
      {super.key,
      required this.labelText,
      required this.keyboardType,
      required this.controller,
        required this.text});

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: const TextStyle(
            fontFamily: 'Acme',
            fontWeight: FontWeight.w400,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        TextField(
          controller: widget.controller,
          cursorColor: const Color(0xFF176B87),
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF176B87)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFCFD0D7)),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            hintText: widget.labelText,
            hintStyle: const TextStyle(
              color: Color(0xFFCFD0D7),
            ),
          ),
        ),
      ],
    );
  }
}


class PasswordTextFieldCustom extends StatefulWidget {
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String text;

  const PasswordTextFieldCustom(
      {super.key,
        required this.labelText,
        required this.keyboardType,
        required this.controller,
        required this.text});

  @override
  State<PasswordTextFieldCustom> createState() => _PasswordTextFieldCustomState();
}

class _PasswordTextFieldCustomState extends State<PasswordTextFieldCustom> {
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: const TextStyle(
            fontFamily: 'Acme',
            fontWeight: FontWeight.w400,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        TextField(
          controller: widget.controller,
          cursorColor: const Color(0xFF176B87),
          keyboardType: widget.keyboardType,
          obscureText: isHide,
          decoration: InputDecoration(
            suffixIcon:IconButton(
              onPressed: () {
                setState(() {
                  isHide = !isHide;
                });
              },
              icon: isHide ? const Icon(
                Icons.visibility_outlined,
              ) : const Icon(
                Icons.visibility_off_outlined,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF176B87)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFCFD0D7)),
            ),
            contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            hintText: widget.labelText,
            hintStyle: const TextStyle(
              color: Color(0xFFCFD0D7),
            ),
          ),
        ),
      ],
    );
  }
}
