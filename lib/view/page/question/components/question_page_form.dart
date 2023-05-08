import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/question_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/view/components/use_button.dart';

class QuestionPageForm extends ConsumerWidget {
  QuestionPageForm({Key? key}) : super(key: key);

  final   _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [_titleField(), _contentField(), _subButton(ref)],
            ),
          ),
        ],
      ),
    );
  }

  Widget _subButton(WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: UseButton(title: "제출하기", buttonPressed: () {
              ref.read(questionControllerProvider).saveQuestion(_titleController.text, _contentController.text);
      }),
    );
  }

  Widget _contentField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "문의 내용",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: Dimens.font_sp18),
          ),
        ),
        TextFormField(
          inputFormatters: [
            // FilteringTextInputFormatter.allow(RegExp(r'[a-z|A-Z|0-9|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ]')),
            FilteringTextInputFormatter.allow(RegExp(r"[\s\S]*")),
          ],
          controller: _contentController,
          keyboardType: TextInputType.multiline,
          cursorColor: Colours.app_main,
          cursorWidth: 3,
          showCursor: true,
          maxLines: null,
          maxLength: 500,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colours.app_main),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: EdgeInsets.symmetric(vertical: 200),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colours.app_sub_black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintText: '내용을 입력하세요',
          ),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return '내용을 입력해주세요.';
            } else if (value.length > 500) {
              return '제한 글자수를 초과하였습니다.';
            }
            return null;
          },
        )
      ],
    );
  }

  Widget _titleField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "문의 제목",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: Dimens.font_sp18),
          ),
        ),
        TextFormField(
          controller: _titleController,
          cursorColor: Colours.app_main,
          cursorWidth: 3,
          showCursor: true,
          decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colours.app_main),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colours.app_sub_black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintText: '제목을 입력하세요',
          ),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return '제목을 입력해주세요';
            }
            return null;
          },
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
