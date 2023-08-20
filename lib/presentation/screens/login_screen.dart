import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'Login_Screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: create a valid login screen
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login screen'),
      ),
      body: const Placeholder(),
      floatingActionButton: FloatingActionButton(onPressed: ()=>context.go('/tarotread')),
    );
  }
}