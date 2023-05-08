import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/sqflite/model/big_category/big_category.dart';
import 'package:readme_app/view/page/category/category_page/category_page_view_model.dart';
import 'package:readme_app/view/page/category/category_page/components/category_page_content.dart';

class CategoryPageBody extends ConsumerWidget {
  CategoryPageBody({Key? key}) : super(key: key);

  int buttonCountPerRow = 4;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CategoryPageModel? model = ref.watch(categoryPageProvider);

    int count = model?.categoryTabs.length ?? 1;
    int rowCount = (count / buttonCountPerRow).ceil();
    int bigCategoryId = model?.bigCategoryId ?? 0;

    return SingleChildScrollView(
      // child: example(model, topic));
      child: Column(
        children: [
          Column(
            children: List.generate(rowCount, (index) {
              int startIndex = index * buttonCountPerRow;
              int endIndex = (index + 1) * buttonCountPerRow;
              if (endIndex > count) {
                endIndex = count;
              }

              List<BigCategory> rowButtons = model?.categoryTabs.sublist(startIndex, endIndex) ?? [];
              return Row(
                children: rowButtons.map((bigCategory) {
                  return Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (bigCategory.id == 0) {
                          ref.read(categoryPageProvider.notifier).categorySearch(bigCategory.id);
                        }
                        ref.read(categoryPageProvider.notifier).bigCategoryIdSelect(bigCategory.id);
                      },
                      style: ElevatedButton.styleFrom(
                      shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.zero),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        backgroundColor: bigCategory.id == bigCategoryId ?  Colours.app_main : Colours.app_sub_black,
                        foregroundColor: Colours.app_sub_white,
                      ),
                      child: Text(bigCategory.name ?? "")
                    ),
                  );
                }).toList()
              );
            })
          ),
          CategoryPageContent(bigCategoryId: bigCategoryId),
        ],
      ));
  }
}
