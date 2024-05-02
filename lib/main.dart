// // ignore_for_file: use_key_in_widget_constructors

// import 'package:flutter/material.dart';
// import 'package:yaarit/screens/homepage.dart';
// import 'package:yaarit/screens/loginflow/options.dart';
// import 'package:yaarit/screens/loginflow/signin.dart';
// import 'package:yaarit/screens/loginflow/signup.dart';
// import 'package:provider/provider.dart';
// import 'package:yaarit/providers/user_provider.dart';



// void main() {
//   // MultiProvider(
//   //     providers: [
//   //       ChangeNotifierProvider(create: (_) => UserProvider()),
//   //     ],
//   //     child: const MyApp(),
//   //   ),
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Yaarit',
//       // theme: ThemeData(
//       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       //   useMaterial3: true,
//       // ),
//     //   initialRoute: '/',
//     //   routes: {
//     //   '/': (context) => const Options(),
//     //   '/signup': (context) => const SignupPage(),
//     //   '/signin': (context) => const SigninPage(),
//     //   '/home': (context) => const HomeScreen(),
//     // },
//     home: Provider.of<UserProvider>(context).user.token.isEmpty ? const SignupPage() : const HomeScreen(),
// );
// }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yaarit/providers/user_provider.dart';
import 'package:yaarit/screens/homepage.dart';
import 'package:yaarit/screens/loginflow/options.dart';
// import 'package:yaarit/screens/loginflow/signin.dart';
// import 'package:yaarit/screens/loginflow/signup.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yaarit',
      home: _getInitialScreen(context),
    );
  }

  Widget _getInitialScreen(BuildContext context) {
    bool isLoggedIn = Provider.of<UserProvider>(context, listen: false).user.token.isNotEmpty;
    return isLoggedIn ? const HomeScreen() : const Options();
  }
}
