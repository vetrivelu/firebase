import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            var firbaseAuth = FirebaseAuth.instance;
            firbaseAuth.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text);
          },
          child: const Text("Login")),
      body: Column(
        children: [
          TextFormField(
            controller: emailController,
          ),
          TextFormField(
            controller: passwordController,
          ),
        ],
      ),
    );
  }
}
