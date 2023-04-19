import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

class MembershipPageCard extends StatelessWidget {
  const MembershipPageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            color: Colours.app_main, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            // width: MediaQuery.sizeOf(context).width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/img.png",
                  scale: 6,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 270,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                style: TextStyle(fontSize: Dimens.font_sp12),
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
}
