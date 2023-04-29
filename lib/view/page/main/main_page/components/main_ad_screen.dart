import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class MainAdScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    MainPageModel? model = ref.watch(mainPageProvider);

    return Container(
      height: 450,
      width: double.infinity,
      child: Swiper(
        // autoplay: true,
        // duration: 5,
        // autoplayDelay: 5,
        controller: SwiperController(),
        pagination: SwiperPagination(),
        itemCount: model?.bookBanners.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 40, sigmaY: 10),
                  child: Image.network(model?.bookBanners[index].path ?? "")
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: 450,
                  width: 500,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Image.network(model?.bookBanners[index].path ?? ""),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

}
