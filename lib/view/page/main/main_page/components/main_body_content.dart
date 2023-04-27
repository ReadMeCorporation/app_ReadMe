import 'package:flutter/material.dart';

class MainBodyContent extends StatefulWidget {
  const MainBodyContent({Key? key}) : super(key: key);

  @override
  State<MainBodyContent> createState() => _MainBodyContentState();
}

class _MainBodyContentState extends State<MainBodyContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder( itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Tab 1 item $index'),
        );
      },);
  }
}
