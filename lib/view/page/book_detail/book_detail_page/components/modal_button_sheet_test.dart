// import 'package:flutter/material.dart';
// import 'package:readme_app/core/constants/colours.dart';
//
// class ModalButtonSheet extends StatelessWidget {
//   const ModalButtonSheet({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: const MyStatelessWidget(),
//       ),
//     );
//   }
// }
//
// class MyStatelessWidget extends StatefulWidget {
//   const MyStatelessWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
// }
//
// class _MyStatelessWidgetState extends State<MyStatelessWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colours.app_sub_black,
//           foregroundColor: Colours.app_sub_white,
//         ),
//         child: const Text('구독 / 소장'),
//         onPressed: () {
//           showModalBottomSheet<void>(
//             context: context,
//             builder: (BuildContext context) {
//               return Container(
//                 height: 300,
//                 color: Colours.app_sub_white,
//                 child: Column(
//                   children: [
//                     CustomTabBar(),
//
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
//
// class CustomTabBar extends StatefulWidget {
//   const CustomTabBar({Key? key}) : super(key: key);
//
//   @override
//   State<CustomTabBar> createState() => _CustomTabBarState();
// }
//
// class _CustomTabBarState extends State<CustomTabBar> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TabBar(
//           onTap: (index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           },
//           tabs: [
//             Tab(
//               text: "멤버십 구독",
//             ),
//             Tab(
//               text: "소장",
//             ),
//           ],
//         ),
//         Expanded(
//           child: TabBarView(
//             children: <Widget>[
//               _buildMembershipSection(context),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//
// Widget _buildMembershipSection(BuildContext context) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.stretch,
//     mainAxisSize: MainAxisSize.min,
//     children: <Widget>[
//       const Text(
//         'ReadMe 멤버가 아니신가요?',
//         style: TextStyle(
//           fontSize: 22,
//         ),
//       ),
//       SizedBox(height: 10),
//       const Text(
//         '멤버십을 구독하고 모든 도서를 자유롭게 열람해 보세요.',
//         style: TextStyle(fontSize: 22),
//       ),
//       SizedBox(height: 10),
//       Row(
//         children: [
//           const Text(
//             '월 9,900원',
//             style: TextStyle(fontSize: 22),
//           ),
//           const Text(
//             '(VAT 포함)',
//             style: TextStyle(fontSize: 16),
//           ),
//         ],
//       ),
//       SizedBox(height: 10),
//       MembershipButton(
//         text: '멤버십 구독하기',
//         onPressed: () => Navigator.pop(context),
//       ),
//     ],
//   );
// }
//
// class MembershipButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;
//
//   const MembershipButton({
//     Key? key,
//     required this.text,
//     required this.onPressed,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         minimumSize: const Size(double.infinity, 50),
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         backgroundColor: Colours.app_sub_black,
//         foregroundColor: Colours.app_sub_white,
//         textStyle: const TextStyle(fontSize: 18),
//       ),
//       child: Text(text),
//       onPressed: onPressed,
//     );
//   }
// }
