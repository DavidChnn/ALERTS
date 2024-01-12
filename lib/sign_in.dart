import 'dart:math';

import 'package:alerts/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      // TODO : Perbaiki tampilan berikut ini
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/bg.png',
              width: double.maxFinite,
            ),
            Container(
              padding: const EdgeInsets.all(48.0),
              child: Column(
                children: [
                  const Text(
                    'ALERTS',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                      color: MyColors.color2,
                    ),
                  ),
                  const SizedBox(height: 24.0),

                  // TODO : Buat perpindahan antara sign in dan sign up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => _onItemTapped(0),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: _selectedIndex == 0
                                  ? Colors.grey
                                  : Colors.red,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _onItemTapped(1),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: _selectedIndex == 1
                                  ? Colors.grey
                                  : Colors.red,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                    ),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 48.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              MyColors.color1,
                            ),
                            elevation: MaterialStatePropertyAll(5.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: const SizedBox(
                            width: double.maxFinite,
                            child: Text(
                              textAlign: TextAlign.center,
                              'Sign In',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        ElevatedButton(
                          style: const ButtonStyle(
                            elevation: MaterialStatePropertyAll(5.0),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons8-google.svg',
                                width: 24.0,
                                height: 24.0,
                              ),
                              const SizedBox(width: 10.0),
                              const Text(
                                'Sign In with Google',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
