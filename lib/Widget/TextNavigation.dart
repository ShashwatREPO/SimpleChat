import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextNavigation extends StatelessWidget {
  final String nonClickableText;
  final String ClickableText;
  final VoidCallback onTap;
  const TextNavigation(
      {super.key,
      required this.nonClickableText,
      required this.onTap,
      required this.ClickableText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          nonClickableText,
          style: GoogleFonts.notoSans(),
        ),
        SizedBox(width: 2,),
        GestureDetector(
          onTap: onTap,
          child: Text(
            ClickableText,
            style: GoogleFonts.notoSans(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        )
      ],
    );
  }
}
