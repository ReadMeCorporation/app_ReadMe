import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class MembershipPagePayment extends StatelessWidget {
  const MembershipPagePayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("결제정보", style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20
          ),),
        ),
        Divider(thickness: 2,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text("총 상품 금액", style: TextStyle(
                    fontWeight: FontWeight.w700
                ),),
                SizedBox(width: 10,),
                Text("9,900원"),
              ],),
              SizedBox(height: 10,),
              // Text("결제수단", style: TextStyle(
              //     fontWeight: FontWeight.w700
              // )),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: InkWell(
        //     onTap: (){},
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         HsStyleIcons.backFill,
        //         Column(
        //           children: [
        //             Container(
        //               width: 300,
        //               height: 180,
        //               decoration: BoxDecoration(
        //                 color: Colours.app_sub_grey,
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   HsStyleIcons.add,
        //                   Text("카드 추가", style: TextStyle(fontWeight: FontWeight.w600),)
        //                 ],
        //               ),
        //             ),
        //             SizedBox(height: 10,),
        //             Text("본인 명의의 카드만 추가 가능합니다"),
        //           ],
        //         ),
        //         HsStyleIcons.nextFill,
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
