import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextField extends StatefulWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  bool HideText;
  InputTextField(
      {super.key,
      this.HideText = false,
      required this.hintText,
      required this.labelText,
      required this.controller});

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText,
            style: GoogleFonts.notoSans(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: 2,
          ),
          TextField(
            obscureText: widget.HideText,
            controller: widget.controller,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                fillColor: Colors.white,
                hintText: widget.hintText,
                filled: true,
                hintStyle: GoogleFonts.notoSans(fontSize: 16),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none,
                    gapPadding: 0)),
          ),
        ],
      ),
    );
  }
}
