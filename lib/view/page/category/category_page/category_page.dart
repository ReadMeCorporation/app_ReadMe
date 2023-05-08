
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/view/page/category/category_page/category_page_view_model.dart';
import 'package:readme_app/view/page/category/category_page/components/category_page_body.dart';

class CategoryPage extends ConsumerWidget {
   const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CategoryPageModel? model = ref.watch(categoryPageProvider);

    return Scaffold(
      backgroundColor: Colours.app_sub_white,
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(kToolbarHeight),
        child: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppBar(
            leadingWidth: 100,
            backgroundColor: Colours.app_sub_white,
            actions: [
              IconButton(
                  padding: EdgeInsets.only(right: 15),
                  icon: YhIcons.cart,
                  onPressed: () {
                  Navigator.pushNamed(context, "/cart");
                  })
            ],
            title: Text(
              "카테고리",
              style: TextStyle(
                  color: Colours.app_sub_black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: CategoryPageBody()
    );
  }
}
