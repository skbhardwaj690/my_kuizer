import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuizer/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        body: Container(
          color: Colors.deepPurple,
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'images/bird2.png',
                width: 300.0,
                height: 200.0,
              ),
              const Text(
                "Hey there!\n\nLet's quickly Sign in with your Google Account..!",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              InkWell(
                onTap: AuthService().googleLogin,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      SvgPicture.asset('assets/icons/google.svg'),
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: const Text(
                          'Sign in with Google',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
