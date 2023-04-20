import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/view/page/payment/payment_page/components/payment_page_body.dart';
import 'package:readme_app/view/page/payment/payment_page/components/payment_page_body_membership.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool _expanded = false;
  
  String priceFormat(int price) {
    var newPrice = NumberFormat('###,###,###,### 원');
    return newPrice.format(price);
  }

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
            child: Text("완료", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20),)
          ),
        ),
      ),
      backgroundColor: Colours.app_sub_white,
      appBar: AppBar(
        title: Text(
          "결제정보",
          style: TextStyle(
              color: Colours.app_sub_black,
              fontWeight: FontWeight.w700,
              fontSize: 22),
        ),
        centerTitle: true,
        leading: Row(
          children: [
            HsStyleIcons.back,
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/main");
                },
                icon: HsStyleIcons.homeFill)
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,
      ),
      body: PaymentPageBodyMembership(),
    );
  }
}

