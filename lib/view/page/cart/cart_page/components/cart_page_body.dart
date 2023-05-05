import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/model/cart_mock_data.dart';
import 'package:readme_app/view/components/use_button.dart';

class CartPageBody extends StatefulWidget {
  CartPageBody({Key? key}) : super(key: key);

  @override
  State<CartPageBody> createState() => _CartPageBodyState();
}

class _CartPageBodyState extends State<CartPageBody> {
  bool isAllChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _hsCheckBox(),
          Container(
            height: 10,
            color: Colours.app_sub_grey,
          ),
          _paymentInfo(),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  Widget _paymentInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "결제 정보",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: Dimens.font_sp20,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Divider(thickness: 2, height: 1),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    child: Text(
                      "상품 개수",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text("${getCount()}권"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    child: Text("총 상품금액",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                  Text(priceFormat(getSum())),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _hsCheckBox() {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
                activeColor: Colours.app_sub_black,
                value: isAllChecked,
                onChanged: (value) {
                  setState(() {
                    isAllChecked = value!;
                    allChecked(value);
                  });
                }),
            Text(
              "전체 선택",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ],
        ),
        Divider(
          thickness: 5,
          height: 1,
        ),
        _bookListTile(),
      ],
    );
  }

  Widget _bookListTile() {
    return Column(
      children: List.generate(cartList.length, (index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colours.app_sub_darkgrey))),
          // width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                activeColor: Colours.app_sub_black,
                value: cartList[index].ischecked,
                onChanged: (value) {
                  setState(() {
                    cartList[index].ischecked = value!;
                  });
                },
              ),
              SizedBox(width: 8,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Container(
                      width: 80,
                      height: 110,
                      child: Image.asset(
                        "assets/images/${cartList[index].image}",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "${cartList[index].title}",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        width: 190,
                      ),
                      Text(
                          "${cartList[index].author} | ${cartList[index].store}"),
                      Row(
                        children: [
                          HsStyleIcons.star,
                          Text("${cartList[index].score}"),
                        ],
                      ),
                      Text("소장가 ${cartList[index].price}"),
                    ],
                  ),
                ],
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: HsStyleIcons.delete)
            ],
          ),
        );
      }),
    );
  }

  int getSum() {
    int sum = cartList
        .where((element) => element.ischecked)
        .map((e) => e.price)
        .toList()
        .fold(0, (a, b) => a + b);

    return sum;
  }

  int getCount() {
    int count = cartList.where((element) => element.ischecked).toList().length;
    return count;
  }

  allChecked(value) {
    if (value == true) {
      cartList.forEach((element) => element.ischecked = true);
    } else {
      cartList.forEach((element) => element.ischecked = false);
    }
  }

  String priceFormat(int price) {
    var newPrice = NumberFormat('###,###,###,### 원');
    return newPrice.format(price);
  }
}
