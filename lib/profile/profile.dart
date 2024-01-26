import 'package:flutter/material.dart';
import 'package:quizco/home/home.dart';
import 'package:quizco/routes.dart';
import 'package:quizco/services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AuthService().signOut();
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (BuildContext context) => const HomeScreen()),
                ModalRoute.withName(AppRoutes.home.url));
          },
          child: const Text('Sign Out'),
        ),
      ),
    );
  }
}
