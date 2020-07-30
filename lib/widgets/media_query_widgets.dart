import 'package:flutter/material.dart';

/// Funcion que contiene el mediaquery para calcular el alto.
double mediaQueryHeight(context) {
  return MediaQuery.of(context).size.height;
}

/// Funcion que contiene el mediaQuery para calcular el ancho.
double mediaQueryWidth(context) {
  return MediaQuery.of(context).size.width;
}
