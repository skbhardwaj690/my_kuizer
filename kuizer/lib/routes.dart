import 'package:kuizer/bottomnav/bottomnavbar.dart';
import 'package:kuizer/home/home.dart';
import 'package:kuizer/login/login.dart';

var appRoutes = {
  '/home': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const BottomNavBar(),
};
