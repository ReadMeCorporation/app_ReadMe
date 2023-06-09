import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/view/page/notice/notification_detail/notice_detail_page_view_model.dart';

class NoticePageDetail extends ConsumerWidget {
  int id;
  NoticePageDetail({required this.id, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    NoticeDetailPageModel? model = ref.watch(noticePageDetailProvider(id));

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "공지",
          style: TextStyle(
              color: Colours.app_sub_black,
              fontWeight: FontWeight.w700,
              fontSize: Dimens.font_sp20),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              padding: EdgeInsets.only(left: 10, right: 5),
              constraints: BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: HsStyleIcons.delete),
        ],
        backgroundColor: Colours.app_sub_white,
        actionsIconTheme: IconThemeData(color: Colours.app_sub_black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        model?.notice.title ?? "",
                        style: TextStyle(
                            fontSize: Dimens.font_sp18,
                            fontWeight: FontWeight.w700,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              model != null ?
              CachedNetworkImage(
                imageUrl:  model?.notice.imageFile.fileUrl ?? "",
                placeholder : (context, url) => Center(
                  child: LoadingAnimationWidget.twoRotatingArc(
                    size: 50,
                    color: Colours.app_main,
                  ),
                ),
                width: double.infinity,
              )

              : Container(),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
                child: Text(
                  model?.notice.content ?? "",
                  style: TextStyle(fontSize: Dimens.font_sp16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
