// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:yaarit/screens/loginflow/signin.dart';
import 'package:yaarit/screens/loginflow/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SignupPage(), // SigninPage(),
  },
);
}
}