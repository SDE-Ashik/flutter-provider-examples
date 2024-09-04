import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapps/providers/cart_providers.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyCart"),
        actions: [
          Consumer<CartProvider>(builder: (context, cartProvider, child) {
            return IconButton(
                onPressed: () {
                  cartProvider.removeAll();
                },
                icon: Icon(Icons.delete));
          })
        ],
      ),
      body: Consumer<CartProvider>(builder: (context, cartProvideer, child) {
        double total = cartProvideer.cartTotal();
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.80,
              child: ListView.builder(
                  itemCount: cartProvideer.items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(cartProvideer.items[index].name),
                    );
                  }),
            ),
            Text("Total amount:${total}"),
          ],
        );
      }),
    );
  }
}
