import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:sv_test/home/home_screen.dart';
import 'package:sv_test/reusable_widgets/button_without_image.dart';
import 'package:sv_test/reusable_widgets/textField_custom.dart';
import 'package:sv_test/signUp/signUp_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login(String email, String password, String token) async {
    try {
      Response response =
          await post(Uri.parse('https://awaivia.com/api/users/login'), body: {
        'email': email,
        'password': password,
        'token': token,
      });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        if (data['success']) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => const HomePageScreen()));
        } else {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  title: Text(
                    'Password not correct',
                    style: TextStyle(
                      fontFamily: 'Acme',
                      fontSize: 20.0,
                    ),
                  ),
                );
              });
        }
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AlertDialog(
                title: Text(
                  'You have problem with the server',
                  style: TextStyle(
                    fontFamily: 'Acme',
                    fontSize: 20.0,
                  ),
                ),
              );
            });
      }
    } catch (e) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                e.toString(),
                style: const TextStyle(
                  fontFamily: 'Acme',
                  fontSize: 20.0,
                ),
              ),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('images/icons8-airplanes-60 1.jpg'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'sv-Test',
                      style: TextStyle(
                        fontFamily: 'Acme',
                        fontWeight: FontWeight.w400,
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 135.0,
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Acme',
                    fontWeight: FontWeight.w400,
                    fontSize: 35.0,
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                TextFieldCustom(
                  text: 'Email',
                  labelText: 'Eg. abc@xyz.com',
                  keyboardType: TextInputType.text,
                  controller: emailController,
                ),
                Row(
                  children: [
                    const Text(
                      'It must be more than 6 latters',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF5885BC),
                      ),
                    ),
                    const SizedBox(
                      width: 7.5,
                    ),
                    SvgPicture.asset('images/hint.svg'),
                  ],
                ),
                const SizedBox(
                  height: 23.0,
                ),
                PasswordTextFieldCustom(
                  text: 'Password',
                  labelText: 'Eg. ***************',
                  keyboardType: TextInputType.text,
                  controller: passwordController,
                ),
                Row(
                  children: [
                    const Text(
                      'It must be more than 6 latters',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF5885BC),
                      ),
                    ),
                    const SizedBox(
                      width: 7.5,
                    ),
                    SvgPicture.asset('images/hint.svg'),
                  ],
                ),
                const SizedBox(
                  height: 109.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: ButtonWithoutImage(
                      text: 'Login',
                      pressed: () {
                        login(emailController.text, passwordController.text,'asd');
                      }),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        fontFamily: 'Acme',
                        fontSize: 14.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => const SignUpScreen()));
                      },
                      child: const Text(
                        ' Signup',
                        style: TextStyle(
                          color: Color(0xFF5885BC),
                          fontFamily: 'Acme',
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
