import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class MainAdScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    MainPageModel? model = ref.watch(mainPageProvider);
    List<String> bannerFile = [];

    if(model != null) {
      bannerFile = model.bookBanners.map((e) => e.imageFile.fileUrl).toList();
    }

    return Container(
      height: 450,
      width: double.infinity,
      child: Swiper(
        // autoplay: true,
        // duration: 5,
        // autoplayDelay: 5,
        controller: SwiperController(),
        pagination: SwiperPagination(),
        itemCount: bannerFile.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 40, sigmaY: 10),
                  child:
                CachedNetworkImage(
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  imageUrl: bannerFile[index] ?? "",
                  placeholder : (context, url) => Center(
                    child: LoadingAnimationWidget.twoRotatingArc(
                      size: 50,
                      color: Colours.app_main,
                    ),
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: 450,
                  width: 500,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child:
                    CachedNetworkImage(
                      imageUrl: bannerFile[index] ?? "",
                      placeholder : (context, url) => Center(
                        child: LoadingAnimationWidget.twoRotatingArc(
                          size: 50,
                          color: Colours.app_main,
                        ),
                      ),
                    )
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
