//
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:readme_app/view/page/book_detail/book_detail_page/components/book_detail_cover.dart';
//
// class BookDetailBody extends ConsumerWidget {
//   const BookDetailBody({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           BookDetailCover(),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 _buildCategory(),
//                 SizedBox(height: 20),
//                 _buildTitle(),
//                 SizedBox(height: 8),
//                 _buildAuthorStore(),
//                 SizedBox(height: 20),
//                 _buildPrice(),
//                 Divider(
//                   thickness: 2,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: _buildTabBar(),
//                 ),
//                 Divider(
//                   thickness: 2,
//                 ),
//                 SizedBox(height: 15),
//                 _buildListContents(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
