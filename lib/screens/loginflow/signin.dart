import 'package:flutter/material.dart';
import 'package:yaarit/screens/loginflow/socials.dart';

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
            const SizedBox(height: 150),
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
            const SizedBox(height: 70),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement sign-in functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              // style: ElevatedButton.styleFrom(
              //   textStyle: const TextStyle(
              //     color: Colors.black, // Set text color to black
              //   ),
              // ),
              child: const Text('Sign In',
              style: TextStyle(color: Colors.black),),
            ),
            const SizedBox(height: 16),
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
            const SizedBox(height: 16),
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