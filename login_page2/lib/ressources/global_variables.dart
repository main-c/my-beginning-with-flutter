import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final headerTextSyle = GoogleFonts.lato(
  textStyle: TextStyle(color: Colors.white, fontSize: 32),
);
final subtitlesTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(color: Color.fromARGB(255, 161, 159, 159)));

final labelTextSyle = GoogleFonts.lato(
  textStyle: TextStyle(color: Colors.white, fontSize: 16),
);

final formTextSyle = GoogleFonts.lato(
    textStyle: TextStyle(
  color: Colors.white,
  fontSize: 14.0,
));

final border = OutlineInputBorder(
  borderSide: BorderSide(width: 3, color: Color.fromARGB(255, 47, 50, 58)),
  borderRadius: BorderRadius.circular(15),
);

final focusBorder = OutlineInputBorder(
  borderSide: const BorderSide(width: 3, color: Colors.red),
  borderRadius: BorderRadius.circular(10),
);

final formDecoration = BoxDecoration(
  color: Color.fromARGB(255, 47, 50, 58),
  borderRadius: BorderRadius.circular(10),
);
