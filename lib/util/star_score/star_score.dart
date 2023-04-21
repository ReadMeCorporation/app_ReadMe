import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class StarScore extends StatelessWidget {
  final int score;

  const StarScore({required this.score, Key? key}) : super(key: key);

  int extra(score) {
    return (5 - score).toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Row(
              children:
              List.generate(score, (index) {
                return Icon(CupertinoIcons.star_fill,size: 16);
              })
          ),
          Row(
              children:
              List.generate(extra(score), (index) {
                return Icon(CupertinoIcons.star,size: 16);
              })
          ),
        ],
      ),
    );
  }
}