import 'package:e_commerce2/screens/favourite_screen/single_favourite_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/app_provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    AppProvider appprovider = Provider.of<AppProvider>(
      context,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Favourites'),
      ),
      body: appprovider.getFavouriteProductList.isEmpty
          ? const Center(
              child: Text("Cart is Empty"),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: appprovider.getCartProductList.length,
              itemBuilder: (ctx, index) {
                return SingleFavouriteItem(
                  singleProduct: appprovider.getFavouriteProductList[index],
                );
              }),
    );
  }
}
