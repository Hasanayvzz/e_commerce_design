import 'package:eticaretdesign/components/custom_button.dart';
import 'package:eticaretdesign/constant/constant.dart';
import 'package:eticaretdesign/model/adress.dart';
import 'package:eticaretdesign/view/checkout.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: [10, 30].horizontalAndVerticalP,
        children: [
          Container(
            margin: 20.horizontalP,
            padding: [18, 12].horizontalAndVerticalP,
            decoration:
                BoxDecoration(color: Constant.yellow, borderRadius: 10.allBR),
            child: const Text(
              "Delivery for FREE until the end of the month ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          ListView.separated(
            itemCount: 2,
            shrinkWrap: true,
            padding: 20.verticalP,
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: 10.allP,
                decoration: BoxDecoration(
                    color: Constant.white,
                    borderRadius: 10.allBR,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 15,
                        color: Colors.black12,
                      )
                    ]),
                child: IntrinsicHeight(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/im_p1.png",
                          width: Grock.width * 0.3,
                          height: Grock.width * 0.3,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           const Text(
                              "İphone 13 Pro Max",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                         const   Text(
                              "\$599",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                              const  Text(
                                  "Quantity",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                              const  SizedBox(
                                  width: 10,
                                ),
                                quantityButton(
                                    icon: Icons.remove, onTap: () {}),
                                Padding(
                                  padding: 7.horizontalP,
                                  child:const Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                quantityButton(icon: Icons.add, onTap: () {}),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.clear_sharp))
                      ]),
                ),
              );
            },
          ),
          Padding(
            padding: 20.onlyBottomP,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: _style,
                ),
                Text(
                  "\$1899",
                  style: _style,
                ),
              ],
            ),
          ),
          CustomButton(
              onTap: () {
                Grock.to(CheckoutView(
                    adress: Adress(location: "", name: "", phone: "")));
              },
              text: "Checkout")
        ],
      ),
    );
  }

  TextStyle _style = TextStyle(fontSize: 36, fontWeight: FontWeight.bold);

  Widget quantityButton({required IconData icon, required Function onTap}) {
    return GrockContainer(
      onTap: onTap(),
      width: 20,
      height: 20,
      decoration: BoxDecoration(borderRadius: 4.allBR, color: Constant.yellow),
      child: Center(
          child: Icon(
        icon,
        size: 20,
        color: Constant.black,
      )),
    );
  }
}
