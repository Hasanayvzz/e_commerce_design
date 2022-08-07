import 'package:eticaretdesign/constant/constant.dart';
import 'package:eticaretdesign/model/bottom_navbar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grock/grock.dart';

import '../view/base_scaffold.dart';

class CustomBottomNavBar extends ConsumerWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(baseScaffoldRiverpod);
    var read = ref.read(baseScaffoldRiverpod);
    return Container(
      height: 100,
      width: Grock.width,
      padding: [15, 20].horizontalAndVerticalP,
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 8),
          ],
          color: Constant.darkWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < read.items.length; i++)
              Stack(

                clipBehavior: Clip.none,
                children: [
                  GrockContainer(
                    onTap: () {
                      read.setCurrentIndex(i);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          read.items[i].image,
                          color: i == watch.currentIndex
                              ? Constant.orange
                              : Constant.black,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          (read.items[i].title),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible: i == watch.currentIndex,
                    child: Positioned.fill(
                      top: -32,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 32,
                          height: 2,
                          decoration: BoxDecoration(
                              borderRadius: 4.allBR, color: Constant.orange),
                        ),
                      ),
                    ),
                  )
                ],
              ),
          ]),
    );

    /*
    BottomNavigationBar(
      backgroundColor: Constant.darkWhite,
      selectedItemColor: Constant.orange,
      selectedIconTheme: IconThemeData(color: Constant.orange),
      unselectedItemColor: Constant.black,
      items: read.items,
      currentIndex: watch.currentIndex,
      onTap: (newPageIndex) {
        read.setCurrentIndex(newPageIndex);
      },
    ); */
  }
}
