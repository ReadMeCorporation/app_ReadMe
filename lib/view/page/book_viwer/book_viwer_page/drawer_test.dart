import 'package:flutter/material.dart';
import '../components/book_drawer_no_membership.dart';

class BookViwerPage2 extends StatefulWidget {
  BookViwerPage2({Key? key}) : super(key: key);

  @override
  _BookViwerPageState createState() => _BookViwerPageState();
}

class _BookViwerPageState extends State<BookViwerPage2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://picsum.photos/200/300',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'My profile',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openEndDrawer();
          },
          icon: Icon(Icons.menu),
        ),
      ),
    );
  }
}
