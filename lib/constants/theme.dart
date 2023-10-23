import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
scaffoldBackgroundColor: Colors.white,
inputDecorationTheme: InputDecorationTheme(
  prefixIconColor: Colors.grey,
  suffixIconColor: Colors.grey,
  border: outlineInputBorder,
  errorBorder: outlineInputBorder,
  enabledBorder: outlineInputBorder,
  focusedBorder: outlineInputBorder,
  disabledBorder: outlineInputBorder,
 

),
elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    textStyle: const TextStyle(
      fontSize: 18.0,
    ),
    disabledBackgroundColor: Colors.grey,
  ),
),


// appBarTheme: const AppBarTheme(
//   backgroundColor: Colors.white,
//   elevation:0.0,
//   iconTheme: IconThemeData(color: Colors.black)

// )
);




OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
  borderSide:BorderSide (color: Colors.grey)
);