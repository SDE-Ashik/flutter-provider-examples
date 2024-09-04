import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapps/const/const.dart';
import 'package:providerapps/providers/cart_providers.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product",
          style: TextStyle(color: Colors.pink),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Consumer<CartProvider>(builder: (context, cartProvider, child) {
        return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product   = products[index];
              return ListTile(
                leading: Container(
                   height: 25,
                  width: 25,
                  color: products[index].color,
                ),
                title: Text(products[index].name),
                trailing: Checkbox(
                    value: cartProvider.items.contains(products[index]),
                    onChanged: (value) {
                      if (value == true) {
                        cartProvider.addProduct(product);
                      }
                      else{
                        cartProvider.removeProduct(product);

                      }
                    }),
              );
            });
      }),
    );
  }
}
