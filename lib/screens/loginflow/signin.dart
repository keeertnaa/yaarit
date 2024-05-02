import 'package:flutter/material.dart';
import 'package:yaarit/custom_textfield.dart';
// import 'package:yaarit/screens/loginflow/socials.dart';
import 'package:yaarit/screens/constants/constant.dart';
import 'package:yaarit/services/auth_services.dart';

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
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: 'Email',
          //     border: OutlineInputBorder(),
          //   ),
          // ),
          SizedBox(height: GlobalSizes.h*0.05),
          CustomTextField(
              controller: passwordController,
              hintText: 'Enter your password',
            ),
          // TextFormField(
          //   obscureText: true,
          //   decoration: const InputDecoration(
          //     labelText: 'Password',
          //     border: OutlineInputBorder(),
          //   ),
          // ),
          SizedBox(height: GlobalSizes.h*0.05),
          ElevatedButton(
            onPressed: loginUser,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, 
            ),
            child: const Text('Sign In',
              style: TextStyle(color: Colors.black),),
          ),
          SizedBox(height: GlobalSizes.h*0.05),
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
          SizedBox(height: GlobalSizes.h*0.05),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninPage()));
                },
                child: const Text(
                  'Create one',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
}