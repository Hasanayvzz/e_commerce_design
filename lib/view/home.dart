import 'package:eticaretdesign/components/custom_appbar.dart';
import 'package:eticaretdesign/components/product_card.dart';
import 'package:eticaretdesign/constant/constant.dart';
import 'package:eticaretdesign/model/home_products_model.dart';
import 'package:eticaretdesign/riverpod/home_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverpod());

class Home extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverpod);
    var read = ref.read(homeRiverpod);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 210,
            child: CampaignsPageView(read, watch),
          ),
          HomeProductCategories(read.hotDeals),
          HomeProductCategories(read.mostPopular)
        ],
      ),
    );
  }

  SizedBox Space() => SizedBox(height: 10);

  Stack CampaignsPageView(HomeRiverpod read, HomeRiverpod watch) {
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (newPageValue) => read.setCampaignsIndex(newPageValue),
          controller: read.pageController,
          itemBuilder: (context, index) => Image.asset(watch.campaigns[index]),
          itemCount: read.campaigns.length,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < read.campaigns.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: campaignsDot(watch, i),
              ),
          ],
        )
      ],
    );
  }

  Align campaignsDot(HomeRiverpod watch, int i) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: 3.allP,
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color:
              watch.campaignsCurrentIndex == i ? Constant.white : Constant.gray,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget HomeProductCategories(HomeProductsModel model) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20.0, right: 20, bottom: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.categoryTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              const Text("See All",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Constant.dark))
            ],
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        SizedBox(
          height: 270,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 1,
              );
            },
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
            ),
            itemCount: model.products.length,
            itemBuilder: (context, index) {
              return ProductCard(product: model.products[index]
                  //product: model.products[index],
                  );
            },
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
