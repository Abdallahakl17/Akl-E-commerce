import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/resuble_widgets/resuble1.dart';


class ForgetMyPassword extends StatelessWidget {
  const ForgetMyPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter Your Email to Rest Password ',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Res_Email(
              text: 'Enter your email',
              icon: Icons.email,
              texttype: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(width: 80.0,
              child: ButtonRes(
                Textelva: 'Reset',
                colorbutton: Colors.green,
                functionbutton: () {
       
                  }
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
