import 'package:e_commerce2/provider/app_provider.dart';
import 'package:e_commerce2/screens/cart_screen/widgets/single_cart_item.dart';
import 'package:e_commerce2/widgets/primary_buttons/primary_button.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    AppProvider appprovider = Provider.of<AppProvider>(
      context,
    );
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "₼ ${appprovider.totalPrice().toStringAsFixed(2)}", //bura
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            PrimaryButton(
              title: "CheckOut",
              onPressed: () {},
            ),
          ]),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Shopping Card'),
      ),
      body: appprovider.getCartProductList.isEmpty
          ? const Center(
              child: Text("Cart is Empty"),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: appprovider.getCartProductList.length,
              itemBuilder: (ctx, index) {
                return SingleCartItem(
                  singleProduct: appprovider.getCartProductList[index],
                );
              }),
    );
  }
}
