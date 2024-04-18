import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AccentButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  double Hpadding;

  AccentButton({super.key, this.Hpadding = 39 ,required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: Hpadding),
            child: Text(text,
                style: GoogleFonts.poppins(
                    color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18), )),
      ),
    );
  }
}
