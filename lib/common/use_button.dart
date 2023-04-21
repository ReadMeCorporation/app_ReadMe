import 'package:flutter/material.dart';
import 'package:readme_app/style/colours.dart';

class UseButton extends StatefulWidget {
  final String title;

  UseButton({required this.title, Key? key}) : super(key: key);

  @override
  State<UseButton> createState() => _useButtonState();
}

class _useButtonState extends State<UseButton> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: Colours.app_sub_black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),),
      child: Text("${widget.title}", style: TextStyle(color: Colours.app_sub_white),)

    );
  }
}

