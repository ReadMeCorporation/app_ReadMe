import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

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
    return Column(
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Align(child: _myDropdown(),
          alignment: Alignment.topRight,),
        )
      ],
    );
  }

  Widget _myDropdown() {
    return DropdownButtonHideUnderline(
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
                width: 100,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colours.app_sub_grey,
                  ),
                  color: Colours.app_sub_white,
                ),
                elevation: 1,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 200,
                width: 100,
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
                height: 40,
                padding: EdgeInsets.all(10)
              ),
            ),
          );
  }
}




