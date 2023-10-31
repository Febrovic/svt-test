import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sv_test/login/login_screen.dart';
import 'package:sv_test/reusable_widgets/button_without_image.dart';
import 'package:sv_test/reusable_widgets/textfield_custom.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void register(
      {required String name,
      required String email,
      required String phone,
      required String password,
      required String token}) async {
    try {
      Response response = await post(
          Uri.parse('https://awaivia.com/api/users/register'),
          body: {
            'name': name,
            'email': email,
            'mobile': phone,
            'password': password,
            'token': token,
          });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        if (data['success']) {
          if (context.mounted) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const LoginScreen()));
          }
        } else {
          if (context.mounted) {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(
                      data['message'],
                      style: const TextStyle(
                        fontFamily: 'Acme',
                        fontSize: 20.0,
                      ),
                    ),
                  );
                });
          }
        }
      } else {
        if (context.mounted) {
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
      }
    } catch (e) {
      if (context.mounted) {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33.0),
            child: Form(
              key: _key,
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
                    height: 48.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create your account',
                        style: TextStyle(
                          fontFamily: 'Acme',
                          fontWeight: FontWeight.w400,
                          fontSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 27.0,
                  ),
                  TextFieldCustom(
                    text: 'UserName',
                    labelText: 'Eg. Omar Mustafa',
                    keyboardType: TextInputType.text,
                    controller: nameController,
                  ),
                  const SizedBox(
                    height: 23.0,
                  ),
                  TextFieldCustom(
                    text: 'Email',
                    labelText: 'Eg. abc@xyz.com',
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 23.0,
                  ),
                  TextFieldCustom(
                    text: 'Phone',
                    labelText: 'Eg. 01234567890',
                    keyboardType: TextInputType.phone,
                    controller: mobileController,
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
                  const SizedBox(
                    height: 23.0,
                  ),
                  PasswordTextFieldCustom(
                    text: 'Confirm Password',
                    labelText: 'Eg. ***************',
                    keyboardType: TextInputType.text,
                    controller: confirmPasswordController,
                  ),
                  const SizedBox(
                    height: 27.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: ButtonWithoutImage(
                        text: 'SignUp',
                        pressed: () {
                          _key.currentState!.save();
                          if (_key.currentState!.validate()) {
                            passwordController.text ==
                                    confirmPasswordController.text
                                ? register(
                                    name: passwordController.text,
                                    email: emailController.text,
                                    phone: mobileController.text,
                                    password: nameController.text,
                                    token: 'asd',
                                  )
                                : showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const AlertDialog(
                                        title: Text(
                                            'Confirm password not like password'),
                                      );
                                    });
                          }
                        }),
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontFamily: 'Acme',
                          fontSize: 14.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const LoginScreen()));
                        },
                        child: const Text(
                          ' Login',
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
      ),
    );
  }
}
