import 'package:flutter_quizapp/home/home.dart';
import 'package:flutter_quizapp/login/login.dart';
import 'package:flutter_quizapp/topics/topics.dart';
import 'package:flutter_quizapp/profile/profile.dart';
import 'package:flutter_quizapp/about/about.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};