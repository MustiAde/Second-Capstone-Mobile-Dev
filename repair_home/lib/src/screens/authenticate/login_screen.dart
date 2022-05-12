import 'package:flutter/material.dart';
import 'package:repair_home/src/shared/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeedf3),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
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
                          fontSize: 16.0, fontWeight: FontWeight.w500),
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
                        decoration:
                            inputTextDecoration.copyWith(hintText: 'Password'),
                        obscureText: true),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff1F319D)),
                      elevation: MaterialStateProperty.all(5.0),
                      shadowColor:
                          MaterialStateProperty.all(const Color(0xff1F319D)),
                      // padding: MaterialStateProperty.all(
                      //     const EdgeInsets.symmetric(
                      //         vertical: 10.0, horizontal: 120.0)),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '• Or sign in with •',
                    style: TextStyle(
                      color: Colors.grey.shade500,
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
                        child: Image.asset('assets/google.png'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('assets/facebook.png'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('assets/twitter.png'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '• Don\'t have an account? Sigh up',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
