import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

class jhUseButton extends StatefulWidget {
  final String title;
  final VoidCallback buttonPressed;

  jhUseButton({required this.title, required this.buttonPressed, Key? key})
      : super(key: key);

  @override
  State<jhUseButton> createState() => _useButtonState();
}

class _useButtonState extends State<jhUseButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 60,
      child: ElevatedButton(
        onPressed: widget.buttonPressed,
        child: Text(widget.title),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colours.app_sub_black,
          foregroundColor: Colours.app_sub_white,
          textStyle: TextStyle(fontWeight: FontWeight.w200, fontSize: Dimens.font_sp18),
        ),
      ),
    );
  }
}