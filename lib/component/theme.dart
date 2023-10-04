import 'package:flutter/material.dart';
import 'package:get/get.dart';

ThemeData darktheme =ThemeData(


  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black
  ),
brightness:  Brightness.dark,
  colorScheme: ColorScheme.dark(
    background:Colors.black
  ),
  primaryColor: Colors.grey[900],
  secondaryHeaderColor: Colors.grey[800]




);

ThemeData  lightheme = ThemeData(
    brightness:  Brightness.light,
  colorScheme: ColorScheme.light(
      background:Colors.white
  ),
    primaryColor: Colors.white,
    secondaryHeaderColor: Colors.black,
    hintColor: Colors.black


);


