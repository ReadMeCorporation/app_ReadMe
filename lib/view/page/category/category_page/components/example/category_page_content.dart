import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/cart_mock_data.dart';

class CategoryPageContent extends StatefulWidget {
  const CategoryPageContent({Key? key}) : super(key: key);

  @override
  State<CategoryPageContent> createState() => _CategoryPageContentState();
}

List<String> lists = ['최신순', '인기순', '구매순'];

class _CategoryPageContentState extends State<CategoryPageContent> {
  String selectedValue = lists.first.toString();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: _myDropdown(),
          ),
          Divider(
            thickness: 1,
            height: 1,
          ),
          _bookTile(context)
        ],
      ),
    );
  }

  Widget _bookTile(BuildContext context) {
    return Column(
      children:
         _listExample(context),
    );
  }

  List<Widget> _listExample(BuildContext context) {
    return List.generate(cartList.length, (index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colours.app_sub_darkgrey),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                // Image.network(
                //   "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/632892f6-d998-426f-b9ae-90c70a5ef775-soil.png",
                //   width: 100,
                //   height: 150,
                // ),
                Image.asset(
                  "assets/images/${cartList[index].image}",
                  width: 100,
                  height: 150,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${cartList[index].title}",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 100,
                    ),
                    Text(
                      "${cartList[index].author} | ${cartList[index].store}",
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: [
                        YhIcons.star,
                        SizedBox(width: 5,),
                        Text(
                          "${cartList[index].score}",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("소장가 ${cartList[index].price}"),
                        SizedBox(width: 100),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                          icon: YhIcons.heart,
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                          icon: YhIcons.cart2,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      });
  }

  //
  Widget _myDropdown() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment: Alignment.topRight,
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            items: lists
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: Dimens.font_sp12,
                          fontWeight: FontWeight.bold,
                          color: Colours.app_sub_black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 40,
              width: 80,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colours.app_sub_grey,
                ),
                color: Colours.app_sub_white,
              ),
              elevation: 0,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colours.app_sub_white,
              ),
              elevation: 1,
              offset: const Offset(0, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(10),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
                height: 40, padding: EdgeInsets.all(10)),
          ),
        ),
      ),
    );
  }
}
