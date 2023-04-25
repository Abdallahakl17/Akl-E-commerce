import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/main/Pagemain.dart';
import 'package:flutter_application_1/screens/provider/cart.dart';
import 'package:provider/provider.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return Cart();
    },
   child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
    );
  }
}
