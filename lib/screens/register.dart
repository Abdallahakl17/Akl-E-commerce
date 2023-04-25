import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/main/Pagemain.dart';
import 'package:flutter_application_1/screens/resuble_widgets/resuble1.dart';

// ignore: unused_import
import 'login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Rgister'),
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
                    texttype: TextInputType.text,
                    text: 'Enter UserName',
                    icon: Icons.person,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Res_Email(
                    texttype: TextInputType.emailAddress,
                    text: 'Enter Your Email',
                    icon: Icons.email,
                  ),
                  const SizedBox(
                    height: 20.0,
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
                        Textelva: 'Register',
                        colorbutton: Colors.green,
                        functionbutton: () {
                             },
                      )),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('I already have an account '),
                      const SizedBox(
                        width: 1.0,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (context)=> HomePage()));
                          },
                          child: const Text('Sign in'))
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
