// ignore_for_file: camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/register.dart';
import 'package:flutter_application_1/screens/restpassword.dart';
import 'package:flutter_application_1/screens/resuble_widgets/resuble1.dart';

// ignore: camel_case_types
class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => Login_PageState();
}

class Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Sign in'),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Res_Email(
                    texttype: TextInputType.emailAddress,
                    text: 'Enter Your Email',
                    icon: Icons.email,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Res_pass(
                    textpas: 'Enter Your Password',
                    iconpass: Icons.remove_red_eye,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                      width: 100.0,
                      child: ButtonRes(
                          Textelva: 'Sign in',
                          colorbutton: const Color.fromARGB(255, 68, 182, 72),
                          functionbutton: () {
                          
                          })),
                  const SizedBox(
                    width: 40.0,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgetMyPassword()));
                      },
                      child: const Text('Forget My Password ')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('don\'t have account ?'),
                      const SizedBox(
                        width: 10.0,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()));
                          },
                          child: const Text('Register'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
