import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/model/payment_mock_data.dart';

class PaymentPageBodyMembership extends StatefulWidget {
  const PaymentPageBodyMembership({Key? key}) : super(key: key);

  @override
  State<PaymentPageBodyMembership> createState() =>
      _PaymentPageBodyMembershipState();
}

class _PaymentPageBodyMembershipState extends State<PaymentPageBodyMembership> {
  bool _expanded = false;

  String priceFormat(int price) {
    var newPrice = NumberFormat('###,###,###,### 원');
    return newPrice.format(price);
  }

  int getSum() {
    int sum = paymentList.map((e) => e.price).toList().fold(0, (a, b) => a + b);
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          _dateInfo(),
          SizedBox(
            height: 10,
          ),
          _membershipCard(context),
          Divider(
            thickness: 1,
          ),
          _totalPrice(),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    ));
    ;
  }

  Widget _totalPrice() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "총 금액 ",
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: Dimens.font_sp18),
            ),
            Text(
              "9,900원",
              style: TextStyle(fontSize: Dimens.font_sp18),
            ),
          ],
        );
  }

  Widget _membershipCard(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Colours.app_main,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Container(
                // width: MediaQuery.sizeOf(context).width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/img.png",
                      scale: 6,
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        SizedBox(
                          width: 230,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "스탠다드 ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: Dimens.font_sp18),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "9,900원",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: Dimens.font_sp18),
                                  ),
                                  Text(
                                    "(VAT 포함)",
                                    style:
                                        TextStyle(fontSize: Dimens.font_sp12),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "전체 도서를 열람할 수 있는 정기 구독권",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(fontSize: Dimens.font_sp14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            // Text("ReadMe의 전체 도서를 열람할 수 있는 정기 구독권"),
                            Text("※ 최초 결제일 기준 자동 결제"),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
  }

  Widget _dateInfo() {
    return Row(
          children: [
            Text(
              "2023.04.19",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: Dimens.font_sp20,
                  color: Colours.app_sub_black),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "(결제)",
              style: TextStyle(
                  fontSize: Dimens.font_sp14, color: Colours.app_sub_black),
            ),
            Spacer(),
            Text("총 1건",
                style: TextStyle(
                    fontSize: Dimens.font_sp14, color: Colours.app_sub_blue))
          ],
        );
  }
}
