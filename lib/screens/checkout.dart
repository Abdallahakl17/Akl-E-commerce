import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/provider/cart.dart';
import 'package:flutter_application_1/shared/appbar.dart';
import 'package:provider/provider.dart';

class ChecOut extends StatelessWidget {
  const ChecOut({super.key});

  @override
  Widget build(BuildContext context) {
    final carrt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('checkout'),
        actions: const [AppBarwidget()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 650,
              child: ListView.builder(
                  itemCount: carrt.selectproduct.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(carrt.selectproduct[index].nameproduct),
                        subtitle: const Text('Akl Store'),
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(carrt.selectproduct[index].pathimage),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              carrt.remove(carrt.selectproduct[index]);
                            },
                            icon: const Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
                  backgroundColor: const MaterialStatePropertyAll(Colors.pink)),
              onPressed: () {},
              child: Text(
                '\$ ${carrt.price}',
                style: const TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }
}
