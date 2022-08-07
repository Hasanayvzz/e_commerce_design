import 'package:eticaretdesign/model/bottom_navbar_model.dart';
import 'package:eticaretdesign/view/account.dart';
import 'package:eticaretdesign/view/category.dart';
import 'package:eticaretdesign/view/home.dart';
import 'package:eticaretdesign/view/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../view/cart.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavBarMordel> items = [
    BottomNavBarMordel(image: "assets/icons/ic_bottom_home.svg", title: "Home"),
    BottomNavBarMordel(
        image: "assets/icons/ic_bottom_save.svg", title: "Wishlist"),
    BottomNavBarMordel(
        image: "assets/icons/ic_bottom_categories.svg", title: "Categories"),
    BottomNavBarMordel(
        image: "assets/icons/ic_bottom_profile.svg", title: "Profile"),
    BottomNavBarMordel(image: "assets/icons/ic_bottom_cart.svg", title: "Cart"),
  ];

  int currentIndex = 0;
  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }


  Widget body() {
    switch (currentIndex) {
      case 0:
        return Home();
      case 1:
        return WishList();
      case 2:
        return Category();
      case 3:
        return Account();
      case 4:
        return Cart();
      default:
        return Home();
    }
  }
}
