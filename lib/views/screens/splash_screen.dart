import 'package:flutter/material.dart';
import 'package:video/views/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void _navigate(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    _navigate(context);
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/apptitle_logo.png",
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset("assets/images/appbar_logo.png"),
          ],
        ),
      ),
    );
  }
}
