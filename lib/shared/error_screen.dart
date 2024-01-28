import "package:flutter/material.dart";
import "package:quizco/shared/bottom_nav.dart";

class ErrorMessage extends StatelessWidget {
  final String message;
  const ErrorMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('ERROR: $message'),
        ),
      ),
    );
  }
}
