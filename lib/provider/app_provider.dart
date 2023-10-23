
import 'package:e_commerce2/models/product_model/product_model.dart';
import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier{

// Cart Work  //

final List<ProductModel> _cartProductList = [];


void addCartProduct (ProductModel productModel){
  _cartProductList.add(productModel);
  notifyListeners();
}



  void removeCartProduct (ProductModel productModel){
    _cartProductList.remove(productModel);
    notifyListeners();
    }

    List <ProductModel> get getCartProductList => _cartProductList;


    /// Favourite ///
    
    
    
final List<ProductModel> _favouriteProductList = [];


void addFavouriteProduct (ProductModel productModel){
  _cartProductList.add(productModel);
  notifyListeners();
}



  void removeFavouriteProduct (ProductModel productModel){
    _cartProductList.remove(productModel);
    notifyListeners();
    }

    List <ProductModel> get getFavouriteProductList => _cartProductList;




   
double totalPrice() {
  double totalPrice = 0.0;
  for (var element in _cartProductList) {
    totalPrice += (element.price as double) * (element.qty ?? 1); // qty değeri null ise 1 olarak kabul edilir
  }
  return totalPrice;
}
//burdan

}