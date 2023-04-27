import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/view/components/use_button.dart';

class MembershipCancelPage extends StatelessWidget {
  const MembershipCancelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "멤버십 해지",
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
        child: Column(
          children: [
            Text(
              "ReadMe 구독을 해지하시겠어요?",
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "멤버십 해지에 관하여",
              style: TextStyle(fontSize: Dimens.font_sp16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "아래 사항을 확인해 주세요!",
              style: TextStyle(fontSize: Dimens.font_sp16),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colours.app_sub_grey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.circle, size: 10),
                          SizedBox(width: 8,),
                          Expanded(
                            child: Text(
                              "구독 서비스는 현 결제 주기 마지막 날인 2023년 5월 1일에 해지됩니다.",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.circle, size: 10),
                          SizedBox(width: 8,),
                          Expanded(child: Text("멤버십은 언제든지 다시 활성화 하실 수 있습니다.")),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.circle, size: 10),
                          SizedBox(width: 8,),
                          Expanded(
                            child: Text("멤버십을 해지하셔도 소장하신 책들은 영구소장 됩니다.",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                height: 50,
                child: UseButton(
                    title: "멤버십 해지하기",
                    buttonPressed: () {
                      // 이후 추가
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
