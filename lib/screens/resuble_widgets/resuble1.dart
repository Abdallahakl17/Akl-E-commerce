// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Res_Email extends StatelessWidget {
  TextInputType? texttype;
  String text;
  IconData? icon;

  Res_Email({super.key, required this.text, this.icon, this.texttype});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: texttype,
      decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(icon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
          contentPadding: const EdgeInsets.all(8)),
    );
  }
}

// ignore: must_be_immutable
class Res_pass extends StatelessWidget {
  String textpas;
  IconData? iconpass;

  Res_pass({super.key, required this.textpas, this.iconpass});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          hintText: textpas,
          suffixIcon: IconButton(onPressed: () {}, icon: Icon(iconpass)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
          contentPadding: const EdgeInsets.all(8)),
    );
  }
}

// ignore: must_be_immutable
class ButtonRes extends StatelessWidget {
  Color colorbutton;
  // ignore: non_constant_identifier_names
  String Textelva;
  Function functionbutton;
  // ignore: non_constant_identifier_names
  ButtonRes({super.key, required this.Textelva, required this.colorbutton,required this.functionbutton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: functionbutton(),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(8.0)),
          backgroundColor: MaterialStatePropertyAll(colorbutton),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(8.0)))),
      child: Text(Textelva,style: const TextStyle(color: Colors.white),),
    );
  }
}
