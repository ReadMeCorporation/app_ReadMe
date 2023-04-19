import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/model/cart_mock_data.dart';
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
        floatingActionButton:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: FloatingActionButton(
                backgroundColor: Colours.app_sub_black,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                onPressed: () {
                  // 나중에 추가!!!!
                },
                child: Text("결제하기", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20),)
            ),
          ),
        ),
      backgroundColor: Colours.app_sub_white,
      appBar: AppBar(
        title: Text(
          "장바구니",
          style: TextStyle(
              color: Colours.app_sub_black,
              fontWeight: FontWeight.w700,
              fontSize: 22),
        ),
        centerTitle: true,
        leading: Row(
          children: [
            HsStyleIcons.back,
            IconButton(onPressed: (){
              Navigator.pushNamed(context, "/main");
            }, icon: HsStyleIcons.homeFill)
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,

      ),
      body: CartPageBody(),
    );
  }
}
