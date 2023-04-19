import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/dimens.dart';

class MembershipPageHeader extends StatelessWidget {
  const MembershipPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("멤버십 정보", style: TextStyle(
            fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20
            ,),),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
