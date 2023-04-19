import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/view/page/membership/membership_page/components/membership_page_card.dart';
import 'package:readme_app/view/page/membership/membership_page/components/membership_page_header.dart';

class MembershipPageBody extends StatelessWidget {
  const MembershipPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MembershipPageHeader(),
          MembershipPageCard(),
        ],
      ),
    );
  }
}
