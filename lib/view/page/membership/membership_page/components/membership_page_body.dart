import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/view/page/membership/membership_page/components/membership_page_card.dart';
import 'package:readme_app/view/page/membership/membership_page/components/membership_page_header.dart';
import 'package:readme_app/view/page/membership/membership_page/components/membership_page_payment.dart';

class MembershipPageBody extends StatelessWidget {
  const MembershipPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MembershipPageHeader(),
        MembershipPageCard(),
        Divider(thickness: 10,),
        MembershipPagePayment(),
      ],
    );
  }
}
