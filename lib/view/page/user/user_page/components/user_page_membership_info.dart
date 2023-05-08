import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:readme_app/dto/user_memebership_info_dto/user_membership_info_dto.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/view/page/user/user_page_view_model.dart';

class UserPageMembershipInfo extends ConsumerWidget {
   UserPageMembershipInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserPageModel? model = ref.watch(userPageProvider);
    UserMembershipInfoDTO? userMembership;
    TableUser userInfo;

    if(model != null) {
      userMembership = model.userMembershipInfoDTO;
      userInfo = model.user!;
    }
    String? endTime = userMembership!.membershipEndTime;

    int membershipDay  = dDay(endTime ?? "");
    String nextPayment = nextPaymentDay(endTime);

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colours.app_main, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "멤버십 정보",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Dimens.font_sp18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "D-${membershipDay}" ,
                      style: TextStyle(fontSize: Dimens.font_sp16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "구독권:",
                      style: TextStyle(fontSize: Dimens.font_sp16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "스탠다드",
                      style: TextStyle(fontSize: Dimens.font_sp16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              scrollable: false,
                              title: Text("스탠다드 구독권이란?"),
                              content: SizedBox(
                                height: 90,
                                child: Column(
                                  children: [
                                    Text(
                                        "월 9,900원으로 ReadMe의 전체 도서를 열람할 수 있는 정기 구독권입니다."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                        "최초 결제일 기준으로 매달 자동 결제가 되어 편리하게 사용 가능합니다."),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, '확인');
                                    },
                                    child: Text("확인"))
                              ],
                            );
                          },
                        );
                      },
                      icon: UseIcons.questionMark,
                      iconSize: 15,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    )
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text("이용기간:", style: TextStyle(fontSize: Dimens.font_sp16)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("${userMembership.membershipStartTime}~${userMembership.membershipEndTime}",
                        style: TextStyle(fontSize: Dimens.font_sp16)),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text("다음 결제일:",
                        style: TextStyle(fontSize: Dimens.font_sp16)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("${nextPayment}",
                        style: TextStyle(fontSize: Dimens.font_sp16)),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/membershipCancel");
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text("해지"),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colours.app_sub_black,
                      textStyle: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

   int dDay(String membershipEndTime) {
     DateTime now = DateTime.now();
     DateTime endDate = DateTime.parse(membershipEndTime);
     return endDate.difference(now).inDays;
   }

   String nextPaymentDay (String endTime) {
     DateTime endDate = DateTime.parse(endTime);
     endDate = endDate.add(Duration(days: 30));
     return endDate.toString();
   }


}
