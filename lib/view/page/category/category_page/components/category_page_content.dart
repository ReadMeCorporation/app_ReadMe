
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/book_controller.dart';
import 'package:readme_app/controller/cart_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/cart_mock_data.dart';
import 'package:readme_app/model/small_category/small_category.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/category/category_page/category_page_view_model.dart';

class CategoryPageContent extends ConsumerWidget {

  int bigCategoryId;

   CategoryPageContent({required this.bigCategoryId, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    CategoryPageModel? model = ref.watch(categoryPageProvider);
    List<SmallCategory> smallCategory = model?.categoryTabs.where((element) => element.id == bigCategoryId).first.smallCategory ?? [];


    return  Column(
      children: [
        smallCategory.isEmpty ? Container()
            : Column(
              children: [
                const Divider(thickness: 1),
                SizedBox(
                  height: 20,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: smallCategory.length,
                    itemBuilder: (context, index) {
                      return OutlinedButton(
                        onPressed: () {
                          ref.read(categoryPageProvider.notifier).categorySearch(bigCategoryId, smallCategory: smallCategory[index].id);
                        },
                        style: OutlinedButton.styleFrom(side: BorderSide.none,
                        foregroundColor: Colours.app_sub_black,),
                        child: Text(smallCategory[index].name, style: TextStyle(
                          color: smallCategory[index].id == (model?.smallCategoryId ?? 0) ? Colours.app_main : Colours.app_sub_black
                        ),),
                      );
                  }),
                ),
                const Divider(thickness: 1,),
              ],
            ),
            Column(
              children: _listExample(context, ref),
            )
          ],
    );
  }

  List<Widget> _listExample(BuildContext context, WidgetRef ref) {

    CategoryPageModel? model = ref.watch(categoryPageProvider);
    List<Book> books =  model?.books ?? [];
    bool isLast = model?.isLast ?? false;
    int page = ((model?.page) ?? 0) + 1;
    int count = books.length;

    return List.generate(books.length, (index) {
      return Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/bookDetail");
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colours.app_sub_grey),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Image.network(
                      books[index].coverFile.fileUrl,
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
                          books[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 100,
                        ),
                        Text(
                          "${ books[index].author} | ${ books[index].publisher.businessName}",
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            YhIcons.star,
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${books[index].stars}",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("소장가 ${books[index].price}"),
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
                              onPressed: () {
                                ref.read(cartControllerProvider).insert(books[index].id);
                              },
                              icon: YhIcons.cart2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          isLast != true && count - 1 == index
              ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
            child: UseButton(title: "더보기", buttonPressed: () {
              ref.read(bookControllerProvider).pageCategorySearch(page, bigCategoryId, smallCategory: model?.smallCategoryId ?? 0);
            }
            ),
          )
              : Container()

        ],
      );
    });
  }

}
