import 'package:e_commerce2/constants/theme.dart';
import 'package:e_commerce2/provider/app_provider.dart';

import 'package:e_commerce2/screens/custom_border_bottom/custom_border.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BOLLO',
        theme: themeData,
        home: const CustomBottomBar()
      ),
    );
  }
}

