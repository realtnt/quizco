import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizco/home/home.dart';
import 'package:quizco/routes.dart';
import 'package:quizco/services/auth.dart';
import 'package:quizco/services/models.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var report = Provider.of<Report>(context);
    var user = AuthService().user;

    if (user != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text(user.displayName ?? 'Guest'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            user.photoURL ??
                                'https://www.gravatar.com/avatar/placeholder',
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(user.email ?? '',
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
              Column(
                children: [
                  Text(report.total.toString(),
                      style: Theme.of(context).textTheme.headlineLarge),
                  Text('Quizzes Completed',
                      style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  AuthService().signOut();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const HomeScreen()),
                      ModalRoute.withName(AppRoutes.home.url));
                },
                child: const Text('logout'),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Text('Not logged in'),
    );
  }
}
