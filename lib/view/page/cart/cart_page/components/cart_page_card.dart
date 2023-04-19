import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class CartPageCard extends StatelessWidget {
  final image;

  const CartPageCard({required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HsStyleIcons.backFill,
        Column(
          children: [
            Container(
              width: 300,
              height: 180,
              decoration: BoxDecoration(
                color: Colours.app_sub_grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/images/${image}", fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Text("shinhanCard (1/3)"),
          ],
        ),
        HsStyleIcons.nextFill,
      ],
    );
  }
}
