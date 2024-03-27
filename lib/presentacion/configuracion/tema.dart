
import 'package:flutter/material.dart';

Color porDefecto=Colors.black;

get colorefecto{
  return porDefecto;
}

List<Color> paleta=[
  porDefecto,
  Colors.white,
  Colors.red,
  Colors.blue,
  Colors.grey,
  Colors.pink,
];

class Tema{
  ThemeData obtenerTema({int color=0}){
    return ThemeData(
      //useMaterial3: true,
      colorSchemeSeed: color<paleta.length?paleta[color]:porDefecto,
    );
  }
}