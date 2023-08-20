import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("user"),
        TextField(),
        Text("pass"),
        TextField(),
      ],
    );
  }
}