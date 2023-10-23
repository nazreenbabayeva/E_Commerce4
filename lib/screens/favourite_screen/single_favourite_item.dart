import 'package:e_commerce2/models/product_model/product_model.dart';
import 'package:e_commerce2/provider/app_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingleFavouriteItem extends StatefulWidget {
  final ProductModel singleProduct;

  const SingleFavouriteItem({super.key, required this.singleProduct});

  @override
  State<SingleFavouriteItem> createState() => _SingleFavouriteItemState();
}

class _SingleFavouriteItemState extends State<SingleFavouriteItem> {
  void showMessage(BuildContext context, String message) {
    // SnackBar kullanarak mesajı göster
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          border: Border.all(
              color: const Color.fromARGB(255, 203, 202, 202), width: 1.3)),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 140,
              color: Colors.grey.withOpacity(0.1),
              child: Image.network(
                widget.singleProduct.image,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 145,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Stack(alignment: Alignment.bottomRight, children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.singleProduct.name,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              AppProvider appprovider =
                                  Provider.of<AppProvider>(context,
                                      listen: false);
                              appprovider
                                  .removeFavouriteProduct(widget.singleProduct);
                              showMessage(context, "Removed to wishlist");
                            },
                            child: const Text(
                              "Remove to wishlist",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 164, 245, 58),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Text(
                        "Price: ${widget.singleProduct.price}₼",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 141, 140, 140),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
