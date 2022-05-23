import 'package:flutter/material.dart';
import 'package:repair_home/src/screens/authenticate/signup_screen.dart';
import 'package:repair_home/src/screens/splashscreen.dart';
import 'package:repair_home/src/services/auth.dart';
import 'package:repair_home/src/shared/constants.dart';
import 'package:repair_home/src/shared/decrations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundMain,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/watermarks/signin_logo.png',
              height: _size.height * 0.35,
              color: blueBlue.withOpacity(0.15),
            ),
            _signinBody(_size),
          ],
        ),
      ),
    );
  }

  Widget _signinBody(Size _size) {
    return SingleChildScrollView(
      child: Container(
          key: _formKey,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Image.asset('assets/white_logo.png'),
              ),
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
                height: 8.0,
              ),
              Container(
                height: 45.0,
                decoration: customBoxDecor,
                child: TextFormField(
                  decoration: inputTextDecoration.copyWith(hintText: 'Email'),
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'Enter email';
                    }
                    return null;
                  }),
                  onChanged: (value) {
                    setState(() => email = value);
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 45.0,
                decoration: customBoxDecor,
                child: TextFormField(
                  decoration:
                      inputTextDecoration.copyWith(hintText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value!.length < 6) {
                      return 'Enter password with more than 6 characters';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() => password = value);
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 45.0,
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
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            dynamic result = _auth.signInWithEmailAndPassword(
                                email, password);
                            if (result == null) {
                              setState(() => error = 'Something went wrong');
                            }
                            ;
                            print(result);
                          }
                          ;

                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: ((context) => const SignupPage()),
                          //   ),
                          // );
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(color: lightWhite),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(blueBlue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(error, style: const TextStyle(color: Colors.red)),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                '• Or sign in with -',
                style: TextStyle(
                  color: bBlackHalf,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10.0,
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
                height: 50.0,
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
          )),
    );
  }
}
