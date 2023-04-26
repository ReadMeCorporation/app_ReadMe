import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

class jhUseButtonAddMinus extends StatefulWidget {
  final String title;
  final VoidCallback buttonPressed;

  jhUseButtonAddMinus({required this.title, required this.buttonPressed, Key? key})
      : super(key: key);

  @override
  State<jhUseButtonAddMinus> createState() => _useButtonState();
}

class _useButtonState extends State<jhUseButtonAddMinus> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 40,
      child: ElevatedButton(
        onPressed: widget.buttonPressed,
        child: Text(widget.title),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colours.app_sub_white,
          foregroundColor: Colours.app_sub_black,
          textStyle: TextStyle(fontWeight: FontWeight.w200, fontSize: Dimens.font_sp18),
        ),
      ),
    );
  }
}