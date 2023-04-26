import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class AlarmPageBody extends StatefulWidget {
  const AlarmPageBody({Key? key}) : super(key: key);

  @override
  State<AlarmPageBody> createState() => _AlarmPageBodyState();
}

class _AlarmPageBodyState extends State<AlarmPageBody> {
  final List<Item> _data = generateItems(5);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        scrollable: false,
                        alignment: Alignment.center,
                        content: Text("알림 내역을 삭제하시겠습니까?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context, '취소');
                              },
                              child: Text('취소')),
                          TextButton(
                              onPressed: () {
                                // 추가
                              },
                              child: Text('확인')),
                        ],
                      );
                    },
                  );
                },
                child: Text("전체삭제"),
                style: TextButton.styleFrom(
                    foregroundColor: Colours.app_sub_black,
                    padding: EdgeInsets.zero),
              ),
            ),
          ),
          Column(
            children: List.generate(3, (index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          scrollable: true,
                          alignment: Alignment.center,
                          content: SizedBox(
                            height: 250,
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    "업데이트 공지",
                                    style:
                                        TextStyle(fontSize: Dimens.font_sp18),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    height: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10.0),
                                        child: Text("2023.04.30"),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          "ReadMe의 버전이 업데이트 되었습니다. 이제 도서 뷰어의 폰트 사이즈를 지정할 수 있어요 😍",
                                          style: TextStyle(
                                              fontSize: Dimens.font_sp14),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          actions: [
                            Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, '확인');
                                  },
                                  child: Text('확인'),
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colours.app_sub_black,
                                      textStyle: TextStyle(
                                          fontSize: Dimens.font_sp16))),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colours.app_sub_grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          // Image.asset("assets/images/img.png", width: 25,),
                          HsStyleIcons.megaphone,
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "(공지)",
                            style: TextStyle(fontSize: Dimens.font_sp12),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text("알려드립니다! 버전 업데이트 예정입니다."),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

class Item {
  Item({
    // required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  // String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      // 인덱스 순서 보기 위해 임의로 넣은 값
      headerValue: '2023.04.25 - $index',
      // expandedValue: 'This is item number $index',
    );
  });
}
