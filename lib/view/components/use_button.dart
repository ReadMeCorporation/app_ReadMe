import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

class UseButton extends StatefulWidget {
  final String title;
  final VoidCallback buttonPressed;

  UseButton({required this.title, required this.buttonPressed, Key? key})
      : super(key: key);

  @override
  State<UseButton> createState() => _useButtonState();
}

class _useButtonState extends State<UseButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ElevatedButton(
        onPressed: widget.buttonPressed,
        child: Text(widget.title),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colours.app_sub_black,
          foregroundColor: Colours.app_sub_white,
            textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimens.font_sp18),
        ),
      ),
    );
  }
}
