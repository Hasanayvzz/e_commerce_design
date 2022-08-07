import 'package:eticaretdesign/constant/constant.dart';
import 'package:eticaretdesign/model/adress.dart';
import 'package:eticaretdesign/model/adress_list.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class CheckoutView extends StatelessWidget {
  Adress adress;
  CheckoutView({Key? key, required this.adress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          title: const Text(
            "Checkout",
            style: TextStyle(color: Constant.black, fontSize: 18),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onPressed: () {
              Grock.back();
            },
            color: Constant.black,
          )),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              padding: 10.allP,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping İnformation",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "Change",
                      style: TextStyle(color: Constant.orange, fontSize: 15),
                    ),
                  ],
                ),
                Card(
                  child: Column(children: [
                    Row(
                      children: [Icon(Icons.person), Text("${adress.name}")],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_city),
                        Text("${adress.location}")
                      ],
                    ),
                    Row(
                      children: [Icon(Icons.phone), Text("${adress.phone}")],
                    )
                  ]),
                ),
              ]),
            );
          }),
    );
  }
}
