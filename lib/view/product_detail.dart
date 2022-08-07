import 'package:eticaretdesign/components/custom_button.dart';
import 'package:eticaretdesign/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import '../model/product.dart';

class ProductDetail extends ConsumerStatefulWidget {
  Product product;
  ProductDetail({required this.product});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailState();
}

class _ProductDetailState extends ConsumerState<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [image(), title(), colors(context), price2(), button()],
          ),
          appbar()
        ],
      ),
    );
  }

  Padding button() {
    return Padding(
      padding: 20.horizontalP,
      child: CustomButton(
        onTap: () {},
        text: ("Add to cart"),
      ),
    );
  }

  Padding price2() {
    return Padding(
      padding: 20.horizontalP,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Total",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          price()
        ],
      ),
    );
  }

  Text price() => Text(
        "\$${widget.product.price}",
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontWeight: FontWeight.bold),
      );

  Padding title() {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Text(
        widget.product.title,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  SafeArea appbar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Constant.black,
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border,
                color: Constant.black,
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding colors(BuildContext context) {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Colors",
          style: _subTitle,
        ),
        const SizedBox(
          height: 8,
        ),
        Wrap(
          spacing: 6,
          children: [
            for (int i = 0; i < widget.product.colors.length; i++)
              Container(
                width: 113,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: 10.allBR, color: widget.product.colors[i]),
              )
          ],
        ),
        Padding(
          padding: [20, 20, 20, 0].paddingLTRB,
        ),
        Text(
          widget.product.descTitle,
          style: _subTitle,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.product.descDetail,
          style: Theme.of(context).textTheme.caption,
        )
      ]),
    );
  }

  SizedBox image() {
    return SizedBox(
      width: double.maxFinite,
      height: 320,
      child: Hero(
          tag: widget.product.image,
          child: Image.asset(
            widget.product.image,
            fit: BoxFit.cover,
          )),
    );
  }

  TextStyle _subTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
}

/*AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: null,
        leading:const Icon(
          Icons.arrow_back,
          color: Constant.black,
          size: 32,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border,
                color: Constant.black,
              ))
        ],
      ), */
