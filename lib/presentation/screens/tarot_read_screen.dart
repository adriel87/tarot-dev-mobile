import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TarotReadScreen extends StatelessWidget {
  static const name ='Tarot read screen';

  const TarotReadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarot screen'),
      ),
      body: const Placeholder(),
      floatingActionButton: FloatingActionButton(onPressed: ()=>context.go('/')),
    );
  }
}