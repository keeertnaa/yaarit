import 'package:flutter/material.dart';
import 'package:yaarit/screens/loginflow/socials.dart';
import 'package:yaarit/screens/constants/constant.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: (GlobalSizes.h)*0.4),
          const Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                color: Colors.black,
                fontSize: 38,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: GlobalSizes.h*0.2),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: GlobalSizes.h*0.15),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: GlobalSizes.h*0.15),
          ElevatedButton(
            onPressed: () {
              // Implement sign-in functionality here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, 
            ),
            child: const Text('Sign In',
              style: TextStyle(color: Colors.black),),
          ),
          SizedBox(height: GlobalSizes.h*0.15),
          GestureDetector(
            onTap: () {
              // Navigate to sign-up page or implement forgot password functionality
            },
            child: const Text(
              'Forgot Password?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(height: GlobalSizes.h*0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account? ",
                style: TextStyle(color: Colors.black),
              ),
              GestureDetector(
                onTap: () {
                  // Implement navigation or account creation functionality
                },
                child: const Text(
                  'Create one',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: GlobalSizes.h*0.15),
          GoogleBtn1(
            onPressed: () {
              // Implement necessary code for Google sign-in
            },
          ),
          GitHubBtn1(
            onPressed: () {
              // Implement necessary code for Github sign-in
            },
          ),
          AppleBtn1(
            onPressed: () {
              // Implement necessary code for apple sign-in
            },
          ),
        ],
      ),
    ),
  );
}
}