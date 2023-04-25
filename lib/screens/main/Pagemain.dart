// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/checkout.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:flutter_application_1/screens/main/details.dart';
import 'package:flutter_application_1/screens/provider/cart.dart';
import 'package:flutter_application_1/shared/appbar.dart';
import 'package:provider/provider.dart';

class Item {
  String pathimage;
  double price;
  String? nameproduct;

  Item({required this.pathimage, required this.price, this.nameproduct});
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final List<Item> images = [
    Item(nameproduct: "product 1", pathimage: 'assets/img/a.jpg', price: 12),
    Item(nameproduct: "product 2", pathimage: 'assets/img/m.jpg', price: 10),
    Item(nameproduct: "product 3", pathimage: 'assets/img/n.jpg', price: 14),
    Item(nameproduct: "product 4", pathimage: 'assets/img/d.jpg', price: 11),
    Item(nameproduct: "product 5", pathimage: 'assets/img/e.jpg', price: 12),
    Item(nameproduct: "product 6", pathimage: 'assets/img/f.jpg', price: 14),
    Item(nameproduct: "product 7", pathimage: 'assets/img/a.jpg', price: 16),
    Item(nameproduct: "product 8", pathimage: 'assets/img/h.jpg', price: 17),
    Item(nameproduct: "product 9", pathimage: 'assets/img/m.jpg', price: 20),
    Item(nameproduct: "product 10", pathimage: 'assets/img/n.jpg', price: 12),
    Item(nameproduct: "product 11", pathimage: 'assets/img/a.jpg', price: 12),
    Item(nameproduct: "product 12", pathimage: 'assets/img/m.jpg', price: 10),
    Item(nameproduct: "product 13", pathimage: 'assets/img/n.jpg', price: 14),
    Item(nameproduct: "product 14", pathimage: 'assets/img/d.jpg', price: 11),
    Item(nameproduct: "product 15", pathimage: 'assets/img/e.jpg', price: 12),
    Item(nameproduct: "product 16", pathimage: 'assets/img/f.jpg', price: 14),
    Item(nameproduct: "product 17", pathimage: 'assets/img/a.jpg', price: 16),
    Item(nameproduct: "product 18", pathimage: 'assets/img/h.jpg', price: 17),
    Item(nameproduct: "product 19", pathimage: 'assets/img/m.jpg', price: 20),
    Item(nameproduct: "product 20", pathimage: 'assets/img/n.jpg', price: 12),
    Item(nameproduct: "product 21", pathimage: 'assets/img/a.jpg', price: 12),
    Item(nameproduct: "product 22", pathimage: 'assets/img/m.jpg', price: 10),
    Item(nameproduct: "product 23", pathimage: 'assets/img/n.jpg', price: 14),
    Item(nameproduct: "product 24", pathimage: 'assets/img/d.jpg', price: 11),
    Item(nameproduct: "product 25", pathimage: 'assets/img/e.jpg', price: 12),
    Item(nameproduct: "product 26", pathimage: 'assets/img/f.jpg', price: 14),
    Item(nameproduct: "product 27", pathimage: 'assets/img/a.jpg', price: 16),
    Item(nameproduct: "product 28", pathimage: 'assets/img/h.jpg', price: 17),
    Item(nameproduct: "product29", pathimage: 'assets/img/m.jpg', price: 20),
    Item(nameproduct: "product 30", pathimage: 'assets/img/n.jpg', price: 12),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: GridView.builder(
            itemCount: images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 1,
              mainAxisSpacing: 4,
            ),
            itemBuilder: ((context, index) {
              return ClipRRect(
                  borderRadius: BorderRadius.circular(60.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Details(product: images[index]);
                        }));
                      },
                      child: GridTile(
                          footer: GridTileBar(
                            trailing: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Consumer<Cart>(
                                  builder: ((context, classInstancee, child) {
                                return IconButton(
                                    onPressed: () {
                                      classInstancee.add(images[index]);
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ));
                              })),
                            ),
                            leading: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "\$ ${images[index].price.toString()}",
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              ),
                            ),
                            title: const Text(''),
                          ),
                          child: Image.asset(images[index].pathimage))));
            })),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Column(
              children: [
                const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img/IMG_1628 (2).JPG"),
                            fit: BoxFit.cover)),
                    currentAccountPicture: CircleAvatar(
                      radius: 70,
                      backgroundImage:
                          AssetImage('assets/img/IMG_1632 (2).jpg'),
                    ),
                    currentAccountPictureSize: Size.square(90),
                    accountName: Text(
                      'abdallah akl',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    accountEmail: Text(
                      'akl@22gamil.com',
                      style: TextStyle(fontSize: 16.0),
                    )),
                ListTile(
                  leading: const Icon(Icons.home),
                  onTap: () {},
                  title: const Text('Home'),
                ),
                ListTile(
                  leading: const Icon(Icons.add_shopping_cart),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ChecOut()));
                  },
                  title: const Text('My Product'),
                ),
                ListTile(
                  leading: const Icon(Icons.help),
                  onTap: () {},
                  title: const Text('About'),
                ),
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Login_Page()));
                  },
                  title: const Text('Logout'),
                ),
              ],
            ),
            const SizedBox(
              height: 390.0,
            ),
            const Text(
              'Developed by Abdallah akl *2023',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            ' Akl Store',
            style: TextStyle(fontSize: 22.0),
          ),
          elevation: 0,
          backgroundColor: Colors.green,
          actions: const [AppBarwidget()]),
    );
  }
}
