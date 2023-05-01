import 'package:flutter/material.dart';
import 'package:readme_app/view/page/content_box/content_box_page/components/content_box_body.dart';
import 'package:readme_app/view/page/content_box/content_box_page/components/content_box_header.dart';

class ContentBoxPage extends StatefulWidget {
  const ContentBoxPage({Key? key}) : super(key: key);


  @override
  State<ContentBoxPage> createState() => _ContentBoxPageState();
}

class _ContentBoxPageState extends State<ContentBoxPage> with SingleTickerProviderStateMixin {

  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 0, vsync: this);

  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ContentBoxHeader(tabController: _tabController,),
      body: ContentBoxBody(tabController: _tabController,),
    );
  }
}

