// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:yaarit/screens/loginflow/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SigninPage(),
  },
);
}
}