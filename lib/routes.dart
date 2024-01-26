import 'package:quizco/home/home.dart';
import 'package:quizco/about/about.dart';
import 'package:quizco/login/login.dart';
import 'package:quizco/profile/profile.dart';
import 'package:quizco/topics/topics.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/about': (context) => const AboutScreen(),
  '/login': (context) => const LoginScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/topics': (context) => const TopicsScreen(),
};

enum AppRoutes {
  home('/'),
  about('/about'),
  login('/login'),
  profile('/profile'),
  topics('/topics');

  const AppRoutes(this.url);
  final String url;
}