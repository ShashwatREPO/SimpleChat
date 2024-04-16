import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccentButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const AccentButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(text,
                style: GoogleFonts.poppins(
                    color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16), )),
      ),
    );
  }
}
