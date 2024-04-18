import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlternativeButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const AlternativeButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.primary , width: 1.2),
            borderRadius: BorderRadiusDirectional.circular(8)
            ),
          
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            text,
            style: GoogleFonts.notoSans(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w500,
                fontSize: 18
      
                ),
          ),
        ),
      ),
    );
  }
}
