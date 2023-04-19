

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readme_app/view/components/home_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        SvgPicture.asset("assets/images/logo.svg", height: 40, width: 40),
      ),
     body:Center(
       child: Text("test"),
     ),
    );
  }
}