
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/view/page/category/category_page/components/example/category_page_body.dart';

class CategoryPage extends StatefulWidget {
   const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>  {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.app_sub_white,
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(kToolbarHeight),
        child: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppBar(
            leadingWidth: 100,
            backgroundColor: Colours.app_sub_white,
            leading: Row(
              children: [
                IconButton(
                    padding: EdgeInsets.only(left: 10, right: 5),
                    constraints: BoxConstraints(),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: HsStyleIcons.back),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  onPressed: () {
                    Navigator.pushNamed(context, "/navigation");
                  },
                  icon: HsStyleIcons.homeFill,),
              ],
            ),
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
