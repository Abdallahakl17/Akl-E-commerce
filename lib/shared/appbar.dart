import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/checkout.dart';
import 'package:flutter_application_1/screens/provider/cart.dart';
import 'package:provider/provider.dart';

class AppBarwidget extends StatelessWidget {
  const AppBarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return         Consumer<Cart>(
  builder: ((context, classInstancee, child) {
  return     Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 123, 216, 138),
                            shape: BoxShape.circle),
                        child:  Text(
                          "${classInstancee.selectproduct.length}",
                          style: const TextStyle(
                              color: Color.fromRGBO(129, 128, 128, 1)),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          const ChecOut()
                          ));

                        },
                        icon: const Icon(Icons.add_shopping_cart)),
                  ],
                ),
                 Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    '\$ ${classInstancee.price}',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            );
}));
  }
}