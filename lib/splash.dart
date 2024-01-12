import 'package:alerts/main.dart';
import 'package:alerts/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/splash.svg',
                    width: 250.0,
                    height: 250.0,
                  ),
                  const SizedBox(height: 48.0),
                  const Text(
                    'ALERTS',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                      color: MyColors.color2,
                    ),
                  ),
                  const Text(
                    'Stay Secure, Stay Aware:\nALERTS On!',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 48.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignIn(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        MyColors.color1,
                      ),
                      elevation: const MaterialStatePropertyAll(
                        5.0,
                      ),
                    ),
                    child: const Text(
                      'Let\'s Started',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
