import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/view/page/payment_list/components/payment_list_body.dart';

// UserPage에 연결해야 함
class PaymentListPage extends StatefulWidget {
  const PaymentListPage({Key? key}) : super(key: key);

  @override
  State<PaymentListPage> createState() => _PaymentListPageState();
}

class _PaymentListPageState extends State<PaymentListPage>
    with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _paymentListAppbar(context),
      body: PaymentListBody(),
    );
  }

  AppBar _paymentListAppbar(BuildContext context) {
    return AppBar(
      title: Text(
        "결제목록",
        style: TextStyle(
            color: Colours.app_sub_black,
            fontWeight: FontWeight.w700,
            fontSize: 22),
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
      elevation: 1,
    );
  }

}