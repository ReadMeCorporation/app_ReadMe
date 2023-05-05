import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/model/cart_mock_data.dart';
import 'package:readme_app/util/bootpay/bootpay_default.dart';
import 'package:readme_app/view/page/cart/cart_page/components/cart_page_body.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // extendBodyBehindAppBar: true,
      floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  width: 45,
                  child: FloatingActionButton(
                    heroTag: "upBtn",
                    backgroundColor: Colours.app_main.withOpacity(0.9),
                    onPressed: () {
                      // 기능 추가
                    },
                    child: HsStyleIcons.up,
                  ),
                ),
              ),
              BootPayDefault(),
            ],
          )),
      backgroundColor: Colours.app_sub_white,
      appBar: AppBar(
        title: Text(
          "장바구니",
          style: TextStyle(
              color: Colours.app_sub_black,
              fontWeight: FontWeight.w700,
              fontSize: Dimens.font_sp20),
        ),
        centerTitle: true,
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
              icon: HsStyleIcons.homeFill,
            )
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,
      ),
      body: CartPageBody(),
    );
  }
}
