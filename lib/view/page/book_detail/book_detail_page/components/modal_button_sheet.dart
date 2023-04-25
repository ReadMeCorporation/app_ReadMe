import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

class ModalButtonSheet extends StatelessWidget {
  const ModalButtonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colours.app_sub_black,
          foregroundColor: Colours.app_sub_white,
        ),
        child: const Text('구독 / 소장'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 300,
                color: Colours.app_sub_white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TabBar(),
                      _buildMembershipSection(context),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class TabBar extends StatefulWidget {
  const TabBar({Key? key}) : super(key: key);

  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  int _selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 22,
                ),
              ),
              onPressed: () {
                setState(() {
                  _selectedButtonIndex = 0;
                });
              },
              child: Text(
                "멤버십 구독",
                style: TextStyle(
                  color: _selectedButtonIndex == 0 ? Colors.black : Colors.grey,
                  fontSize: 22,
                  fontWeight: _selectedButtonIndex == 0
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 22,
                ),
              ),
              onPressed: () {
                setState(() {
                  _selectedButtonIndex = 1;
                });
              },
              child: Text(
                "소장",
                style: TextStyle(
                  color: _selectedButtonIndex == 1 ? Colors.black : Colors.grey,
                  fontSize: 22,
                  fontWeight: _selectedButtonIndex == 1
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
      ],
    );
  }
}





Widget _buildMembershipSection(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      const Text(
        'ReadMe 멤버가 아니신가요?',
        style: TextStyle(
          fontSize: 22,
        ),
      ),
      SizedBox(height: 10),
      const Text(
        '멤버십을 구독하고 모든 도서를 자유롭게 열람해 보세요.',
        style: TextStyle(fontSize: 22),
      ),
      SizedBox(height: 10),
      Row(
        children: [
          const Text(
            '월 9,900원',
            style: TextStyle(fontSize: 22),
          ),
          const Text(
            '(VAT 포함)',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      SizedBox(height: 10),
      MembershipButton(
        text: '멤버십 구독하기',
        onPressed: () => Navigator.pop(context),
      ),
    ],
  );
}



class MembershipButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MembershipButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        backgroundColor: Colours.app_sub_black,
        foregroundColor: Colours.app_sub_white,
        textStyle: const TextStyle(fontSize: 18),
      ),
      child: Text(text),
      onPressed: onPressed,
    );
  }
}
