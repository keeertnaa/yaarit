import 'package:flutter/material.dart';
import 'package:yaarit/screens/loginflow/socials.dart';
import 'package:yaarit/screens/constants/constant.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalSizes.init(context); // Initialize GlobalSizes
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: GlobalSizes.h * 0.05), // Use GlobalSizes for height
            const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(height: GlobalSizes.h*0.05),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: GlobalSizes.h*0.025),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: GlobalSizes.h*0.025),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: GlobalSizes.h*0.025),
            ElevatedButton(
              onPressed: () {
                // Implement sign-up functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: GlobalSizes.h*0.025),
            GestureDetector(
              onTap: () {
                // Navigate to sign-in page or implement other action
              },
              child: const Text(
                'Already have an account? Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(height: GlobalSizes.h*0.005),
            GoogleBtn1(
              onPressed: () {
                // Implement necessary code for Google sign-up
              },
            ),
            GitHubBtn1(
              onPressed: () {
                // Implement necessary code for Github sign-up
              },
            ),
            AppleBtn1(
              onPressed: () {
                // Implement necessary code for Apple sign-up
              },
            ),
          ],
        ),
      ),
    );
  }
}