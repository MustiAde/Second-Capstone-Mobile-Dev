import 'package:flutter/material.dart';
import 'package:repair_home/src/screens/home/home_screen.dart';
import 'package:repair_home/src/shared/constants.dart';
import 'package:repair_home/src/shared/widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightWhite,
      body: SingleChildScrollView(
        child: Container(
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
                        'Create new account',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: customBoxDecor,
                      child: TextFormField(
                          decoration: inputTextDecoration.copyWith(
                              hintText: 'Confirm password'),
                          obscureText: true),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 50.0,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => const HomeScreen()),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Sign up',
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(blueBlue),
                                  elevation: MaterialStateProperty.all(7.0),
                                  shadowColor: MaterialStateProperty.all(blueBlue),
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
                      '• Or sign up with -',
                      style: TextStyle(
                        color: textColor2,
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
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
