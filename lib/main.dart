import 'package:flutter/material.dart';
import 'package:ongraphapp/component/theme.dart';
import 'package:ongraphapp/view/becomeselleView.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: darktheme,

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightheme,
      home: BecomesellerView(),
    );
  }
}

