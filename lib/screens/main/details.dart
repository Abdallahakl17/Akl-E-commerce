import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/main/Pagemain.dart';
import 'package:flutter_application_1/shared/appbar.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  Item product;
  Details({super.key, required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isshow = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
      title: const Text('details'),
         actions: const [AppBarwidget()]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
         widget.product.pathimage,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
             "\$ ${ widget.product.price }",
              style: const TextStyle(fontSize: 25.0),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(6.0)),
                  child: const Text(
                    'News',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Color.fromARGB(255, 240, 227, 108),
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Color.fromARGB(255, 240, 227, 108),
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Color.fromARGB(255, 240, 227, 108),
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Color.fromARGB(255, 240, 227, 108),
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Icon(
                      Icons.edit_location,
                      size: 35,
                      color: Colors.green,
                    ),
                    Text(
                      'Akl Store',
                      style: TextStyle(fontSize: 18.0),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                'Details :',
                style: TextStyle(fontSize: 25.0),
                textAlign: TextAlign.start,
              ),
            ),
            Text(
              'chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics',
              style: const TextStyle(
                fontSize: 25.0,
              ),
              maxLines: isshow ? 4 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isshow = !isshow;
                  });
                },
                child: Text(isshow ? 'Show More' : 'Less More'))
          ],
        ),
      ),
    );
  }
}
