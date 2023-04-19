import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/model/payment_mock_data.dart';

class PaymentPageBody extends StatefulWidget {
  const PaymentPageBody({Key? key}) : super(key: key);

  @override
  State<PaymentPageBody> createState() => _PaymentPageBodyState();
}

class _PaymentPageBodyState extends State<PaymentPageBody> {

  bool _expanded = false;

  String priceFormat(int price) {
    var newPrice = NumberFormat('###,###,###,### 원');
    return newPrice.format(price);
  }

  int getSum() {
    int sum = paymentList
        .map((e) => e.price)
        .toList()
        .fold(0, (a, b) => a + b);
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
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
                  Text("총 ${paymentList.length}건", style: TextStyle(
                      fontSize: Dimens.font_sp14, color: Colours.app_sub_blue))
                ],
              ),
              SizedBox(height: 10,),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: paymentList.length, itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFFD9D9D9))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/${paymentList[index].image}",
                            width: 100,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "도서명",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: Dimens.font_sp16),
                                    ),
                                    width: 50,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 130,
                                    child: Text("${paymentList[index].title}",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: Dimens.font_sp16)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    child: Text(
                                      "출판사",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: Dimens.font_sp16),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("그린아카데미",
                                      style: TextStyle(
                                          fontSize: Dimens.font_sp16)),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text(
                                      "결제 금액",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: Dimens.font_sp16),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(priceFormat(paymentList[index].price),
                                      style: TextStyle(
                                          fontSize: Dimens.font_sp16)),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },),
              Divider(thickness: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("총 금액 ", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimens.font_sp18),),
                  Text("${priceFormat(getSum())}", style: TextStyle(fontSize: Dimens.font_sp18),),
                ],
              ),
              SizedBox(height: 100,),
            ],
          ),
        ));
  }
}
