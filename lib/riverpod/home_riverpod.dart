import 'package:eticaretdesign/model/home_products_model.dart';
import 'package:eticaretdesign/model/product.dart';
import 'package:flutter/material.dart';

class HomeRiverpod extends ChangeNotifier {
  List<String> campaigns = [
    "assets/images/im_campaigns.png",
    "assets/images/im_campaigns.png",
    "assets/images/im_campaigns.png"
  ];

  int campaignsCurrentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  void setCampaignsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }

  List<Color> colorList = [];

  HomeProductsModel hotDeals =
      HomeProductsModel(categoryTitle: "Hot Deals", products: [
    Product(
      image: "assets/images/im_c1.png",
      title: "Apple iMac 24 (2021)",
      price: 1299,
      star: 4.9,
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      isSaved: false,
    ),
    Product(
      image: "assets/images/im_w1.png",
      title: "Apple Watch V1",
      price: 859,
      star: 4.7,
      descTitle: "Get Apple TV+ free for a year",
      isSaved: true,
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
    ),
    Product(
      image: "assets/images/im_p1.png",
      title: "Apple iphone 12 Series",
      price: 1199,
      descTitle: "Get Apple TV+ free for a year",
      star: 5.0,
      isSaved: false,
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
    ),
  ]);

  HomeProductsModel mostPopular =
      HomeProductsModel(categoryTitle: "Most Popular", products: [
    Product(
      image: "assets/images/im_c2.png",
      title: "Apple iMac 30 (2018)",
      price: 1000,
      descTitle: "Get Apple TV+ free for a year",
      star: 4.9,
      isSaved: true,
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
    ),
    Product(
      image: "assets/images/im_w2.png",
      title: "Apple Watch V2",
      price: 1099,
      star: 4.9,
      descTitle: "Get Apple TV+ free for a year",
      isSaved: false,
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
    ),
    Product(
      image: "assets/images/im_p2.png",
      title: "Apple iphone 13 Pro Max",
      price: 1499,
      star: 5.0,
      isSaved: true,
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
    ),
  ]);
}
