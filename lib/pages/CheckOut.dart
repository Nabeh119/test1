import 'package:flutter/material.dart';
import 'package:pro/Shared/AppBar.dart';
import 'package:pro/provider/cart.dart';
import 'package:provider/provider.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('::CheckOut Screen::'),
        actions: [
          ProductsAndPrice(),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: cart.selectedProducts.length,
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    return Card(
                      child: ListTile(
                        subtitle: Text(
                            "${cart.selectedProducts[index].price} - ${cart.selectedProducts[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              cart.selectedProducts[index].imgPath),
                        ),
                        title: Text(cart.selectedProducts[index].name),
                        trailing: IconButton(
                            onPressed: () {
                              cart.delete(cart.selectedProducts[index]);
                            }, icon: Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Pay \$ ${cart.price}",
              style: TextStyle(fontSize: 19),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.orange),
              padding: WidgetStateProperty.all(EdgeInsets.all(12)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
