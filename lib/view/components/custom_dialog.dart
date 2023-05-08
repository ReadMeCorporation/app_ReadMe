import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';

class DialogUtil {
  static void dialogShow (BuildContext context, String? content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog(
          title: "에러",
          content: content ?? "예기치 못한 에러입니다.",
          callback: () {
            Navigator.of(context).pop(); // 다이얼로그를 닫습니다.
          },
        );
      },
    );
  }
}

class CustomDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback callback;

  CustomDialog({required this.title, required this.content, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 100.0,
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
          ),
          margin: EdgeInsets.only(top: 16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                content,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: callback,
                  child: Text(
                    "닫기",
                    style: TextStyle(
                      color: Colours.app_sub_black
                      ,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0.0,
          left: 16.0,
          right: 16.0,
          child: CircleAvatar(
            backgroundColor: Colours.app_sub_white,
            radius: 50.0,
            child: Image.asset("assets/images/readme_short.png",),
            // 다이얼로그 아이콘 이미지를 assets 폴더에 추가해주세요.
          ),
        ),
      ],
    );
  }
}
