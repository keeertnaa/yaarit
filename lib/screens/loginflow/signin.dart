import 'package:flutter/material.dart';
import 'package:yaarit/screens/loginflow/signup.dart';
// import 'package:yaarit/screens/loginflow/socials.dart';
import 'package:yaarit/screens/constants/constant.dart';
import 'package:yaarit/services/auth_services.dart';
import 'package:yaarit/custom_textfield.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = AuthService();

void loginUser() {
  authService.signInUser(
     context: context,
     email: emailController.text,
     password: passwordController.text,
  );
}

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: (GlobalSizes.h)*0.18),
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
          SizedBox(height: GlobalSizes.h*0.12),
          CustomTextField(
              controller: emailController,
              hintText: 'Enter your email',
            ),
          SizedBox(height: GlobalSizes.h*0.015),
          CustomTextField(
              controller: passwordController,
              hintText: 'Enter your password',
            ),
          SizedBox(height: GlobalSizes.h*0.015),
          ElevatedButton( 
            onPressed: loginUser,
            // {
            //   String email = emailController.text;  // Correct the case of emailController
            //   List<String> allowedDomains = ['@mvsrec.edu.in', '@moonlighttstudios.com'];
            //   bool isAllowed = allowedDomains.any((domain) => email.contains(domain));

            //   if (isAllowed) {
            //     loginUser();
            //   } else {
            //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign-in not allowed for $email")));
            //   }
            // },
            
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, 
            ),
            child: const Text('Sign In',
              style: TextStyle(color: Colors.black),),
          ),
          SizedBox(height: GlobalSizes.h*0.015),
          GestureDetector(
            onTap: () {
              // Navigate to sign-up page or implement forgot password functionality
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
            },
            child: const Text(
              'Forgot Password?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(height: GlobalSizes.h*0.015),
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
          SizedBox(height: GlobalSizes.h*0.015),
          // GoogleBtn1(
          //   onPressed: () {
          //     // Implement necessary code for Google sign-in
          //   },
          // ),
          // GitHubBtn1(
          //   onPressed: () {
          //     // Implement necessary code for Github sign-in
          //   },
          // ),
          // AppleBtn1(
          //   onPressed: () {
          //     // Implement necessary code for apple sign-in
          //   },
          // ),
        ],
      ),
    ),
  );
}
}