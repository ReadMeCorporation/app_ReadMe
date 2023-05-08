import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/book_detail_body.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/membership_button.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/my_bottom_sheet.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/purchase_button.dart';

class BookDetailPage extends StatefulWidget {
  const BookDetailPage({Key? key}) : super(key: key);

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

int _selectedButtonIndex = 0;
double _rating = 0;
final _textController = TextEditingController();

class _BookDetailPageState extends State<BookDetailPage>
    with SingleTickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(context),
      body: BookDetailBody(),
      bottomSheet: MyBottomSheet(),
    );
  }



  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Row(
        children: [
          IconButton(
            icon: YhIcons.back,
            onPressed: () {
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeNavigationBar()));
              if (Navigator.of(context).widget.pages.length > 1) {
                Navigator.pop(context);
                // Navigator.popUntil(context, ModalRoute.withName('/'));
              } else {
                Navigator.pushNamed(context, "/navigation");
              }
            },
          ),
          IconButton(
            icon: YhIcons.homeFill,
            onPressed: () {
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeNavigationBar()));
              Navigator.pushNamed(context, "/navigation");
            },
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: IconButton(
            icon: YhIcons.cart3,
            onPressed: () {
              Navigator.pushNamed(context, "/cart");
            },
          ),
        ),
      ],
    );
  }

}



