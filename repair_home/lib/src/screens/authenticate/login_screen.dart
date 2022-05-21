import 'package:flutter/material.dart';
import 'package:repair_home/src/screens/authenticate/signup_screen.dart';
import 'package:repair_home/src/screens/splashscreen.dart';
import 'package:repair_home/src/shared/constants.dart';
import 'package:repair_home/src/shared/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundMain,
      body: SingleChildScrollView(
        child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
            child: Stack(
              children: [
                // Image.asset('assets/blue_logo.png'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/white_logo.png'),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Login to your account',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: bBlack),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: customBoxDecor,
                      child: TextFormField(
                        decoration:
                            inputTextDecoration.copyWith(hintText: 'Email'),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: customBoxDecor,
                      child: TextFormField(
                          decoration: inputTextDecoration.copyWith(
                              hintText: 'Password'),
                          obscureText: true),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: blueBlue,
                                  blurRadius: 3.0,
                                  offset: Offset(3, 2),
                                )
                              ],
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const SignupPage()),
                                  ),
                                );
                              },
                              child: const Text(
                                'Sign in',
                                style: TextStyle(color: lightWhite),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(blueBlue),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    const Text(
                      '• Or sign in with -',
                      style: TextStyle(
                        color: bBlackHalf,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: InkWell(
                            onTap: () {
                              print('google');
                            },
                            child: Image.asset('assets/google.png'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: InkWell(
                            onTap: () {
                              print('facebook');
                            },
                            child: Image.asset('assets/facebook.png'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: InkWell(
                            onTap: () {
                              print('twitter');
                            },
                            child: Image.asset('assets/twitter.png'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '• Don\'t have an account? ',
                          style: TextStyle(
                            color: bBlackHalf,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const LoadingScreen()),
                              ),
                            );
                          },
                          hoverColor: Colors.transparent,
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              color: textLink,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
