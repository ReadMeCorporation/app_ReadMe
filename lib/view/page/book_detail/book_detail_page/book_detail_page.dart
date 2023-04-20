import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';

class BookDetailPage extends StatefulWidget {
  const BookDetailPage({Key? key}) : super(key: key);

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Image.asset("assets/images/${bookDetail.image}"),
          ),
          Container(
            height: 600,
            width: 500,
            child: Padding(
              padding: EdgeInsets.all(60),
              child: Image.asset("assets/images/${bookDetail.image}"),
            ),
          ),
          // TextButton(
          //
          // ),
          Positioned(
            top: 5,
            left: 0,
            right: 0,
            child: AppBar(
              leadingWidth: 100,
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Row(
                children: [
                  IconButton(
                    icon: YhIcons.back,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: YhIcons.homeFill,
                    onPressed: (){
                      Navigator.pushNamed(context, "/main");
                    },
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: IconButton(
                    icon: YhIcons.cart3,
                    onPressed: (){
                      Navigator.pushNamed(context, "/cart");
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
