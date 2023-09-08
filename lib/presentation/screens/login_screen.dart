import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'Login_Screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: create a valid login screen
    return Stack(
      children: [
        Image.asset(
          'assets/images/rotate_image.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: const Text('Login screen'),
          ),
          
          floatingActionButton:
              FloatingActionButton(onPressed: () => context.go('/tarotread')),
        )
      ],
    );
  }
}
