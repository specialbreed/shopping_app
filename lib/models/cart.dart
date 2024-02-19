import 'shoes.dart';
import 'package:flutter/foundation.dart';

class Cart extends ChangeNotifier{
List<Shoe> shoeShop = [
  Shoe(
    name: 'Zoom Freak',
    price: '236',
    description: 'Latest signature shoe',
    imagePath: 'lib/images/ZoomFreak.png',
  ),
  Shoe(name: 'Air Jordan',
      price: '220',
      description: 'Much latest wears',
      imagePath: 'lib/images/AirJordan.png'
  ),
  Shoe(name: 'KD Treys',
  price: '240',
  description: 'Taking fashion to next level',
  imagePath: 'lib/images/KDTREY.png'
  ),
  Shoe(name: 'Kyrie 6',
      price: '250',
      description: 'Taking fashion to another world',
      imagePath: 'lib/images/kyrie.png'
  ),
];
  List<Shoe>userCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  void addItemCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
 void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
 }
}