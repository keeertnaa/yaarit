import 'package:flutter/material.dart';
import 'package:yaarit/screens/loginflow/signin.dart';
import 'package:yaarit/screens/loginflow/socials.dart';
import 'package:yaarit/screens/constants/constant.dart';
import 'package:yaarit/services/auth_services.dart';
import 'package:yaarit/custom_textfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final AuthService authService = AuthService();

  void signupUser() {
    authService.signUpUser(
      context: context,
      email: emailController.text,
      password: passwordController.text,
      name: nameController.text,
    );
  }

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
            // TextFormField(
            //   decoration: const InputDecoration(
            //     labelText: 'Email',
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            CustomTextField(
              controller: nameController,
              hintText: 'Enter your name',
            ),
            SizedBox(height: GlobalSizes.h*0.025),
            // TextFormField(
            //   obscureText: true,
            //   decoration: const InputDecoration(
            //     labelText: 'Password',
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            CustomTextField(
              controller: emailController,
              hintText: 'Enter your email',
            ),
            SizedBox(height: GlobalSizes.h*0.025),
            // TextFormField(
            //   obscureText: true,
            //   decoration: const InputDecoration(
            //     labelText: 'Confirm Password',
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            CustomTextField(
              controller: passwordController,
              hintText: 'Enter your password',
            ),
            SizedBox(height: GlobalSizes.h*0.025),
            ElevatedButton(
              onPressed: () {
              String email = emailController.text;  // Correct the case of emailController
              List<String> allowedDomains = ['@mvsrec.edu.in', '@moonlighttstudios.com'];
              bool isAllowed = allowedDomains.any((domain) => email.contains(domain));

              if (isAllowed) {
                signupUser();  // Call the login function if the email is allowed
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Sign-up with college domain")));
              }
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninPage()));
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