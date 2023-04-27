import 'package:flutter/material.dart';
import 'package:readme_app/view/page/main/main_page/components/main_body_content.dart';

class MainPageBody extends StatefulWidget {
  const MainPageBody({Key? key}) : super(key: key);

  @override
  State<MainPageBody> createState() => _MainPageBodyState();
}

class _MainPageBodyState extends State<MainPageBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: "test1",
              ),
              Tab(
                text: "test2",
              ),
              Tab(
                text: "test3",
              ),
              Tab(
                text: "test4",
              ),
            ]),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Tab 1 item $index'),
                );
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Tab 2 item $index'),
                );
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Tab 3 item $index'),
                );
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Tab 4 item $index'),
                );
              },
            ),
          ],
        ))
      ],
    );
  }
}
