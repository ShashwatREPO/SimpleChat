import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
                child: Text(
                  "Simplechat",
                  style: GoogleFonts.archivoBlack(color: Theme.of(context).colorScheme.primary , fontSize: 16),
                ),
              ),
        CustomPaint(
          painter: Mypainter(context: context) ,
        )
      ],
    );
  }


}


  class Mypainter extends CustomPainter{
    final BuildContext context;
    const Mypainter({required this.context});
  
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
    ..color = Theme.of(context).colorScheme.primary 
    ..strokeWidth = 2;
   
    canvas.drawLine(Offset(20, 5), Offset(60, 5), paint);
    canvas.drawLine(Offset(60, 5), Offset(55, 0), paint);
     canvas.drawLine(Offset(60, 5), Offset(55, 10), paint);


    // TODO: implement paint
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    // TODO: implement shouldRepaint
  
  }

  }