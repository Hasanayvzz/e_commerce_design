import 'package:eticaretdesign/constant/constant.dart';
import 'package:eticaretdesign/model/product.dart';
import 'package:eticaretdesign/view/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class ProductCard extends StatelessWidget {
  Product product;
  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 8.allP,
      child: GrockContainer(
        onTap: () => Grock.to(ProductDetail(product: product)),
        width: 150,
        decoration: BoxDecoration(
            borderRadius: 10.allBR,
            color: Constant.white,
            boxShadow: const [
              BoxShadow(color: Colors.black26, blurRadius: 8),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.image,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: 10.horizontalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                    product.title,
                    style: const TextStyle(fontSize: 15),
                  )),
                  product.isSaved
                      ? const Icon(
                          (Icons.bookmark_rounded),
                          color: Constant.black,
                        )
                      : const Icon(
                          (Icons.bookmark_rounded),
                          color: Constant.orange,
                        )
                ],
              ),
            ),
            Padding(
              padding: [10, 5].horizontalAndVerticalP,
              child: Text(
                "\$${product.price}",
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: 10.horizontalP,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star_rounded,
                  color: Constant.orange,
                ),
                Text(
                  "${product.star}",
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
