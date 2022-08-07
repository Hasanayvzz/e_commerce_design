import 'package:eticaretdesign/model/adress.dart';
import 'package:eticaretdesign/model/adress_list.dart';
import 'package:flutter/material.dart';

class AdressRiverpod extends ChangeNotifier {
  AdressModel adresmodel = AdressModel(CategoryTitlee: "Selam", adress: [
    Adress(
        location: "221B Baker Street London, UK",
        name: "Jane Alderson",
        phone: "+123456789")
  ]);
}
