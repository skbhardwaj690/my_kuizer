import 'package:flutter/material.dart';
import 'package:kuizer/bottomnav/bottomnavbar.dart';
import 'package:kuizer/login/login.dart';
import 'package:kuizer/services/auth.dart';
import 'package:kuizer/shared/shared.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return const Center(
            child: ErrorMessage(),
          );
        } else if (snapshot.hasData) {
          return const BottomNavBar();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
