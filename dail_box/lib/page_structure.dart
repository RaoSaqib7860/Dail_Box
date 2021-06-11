import 'dart:math' show pi;
import 'package:dail_box/bottomNav/chatbox.dart';
import 'package:dail_box/bottomNav/goernment.dart';
import 'package:dail_box/bottomNav/home.dart';
import 'package:dail_box/bottomNav/listings.dart';
import 'package:dail_box/bottomNav/messages.dart';
import 'package:dail_box/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class PageStructure extends StatefulWidget {
//  final String title;
//  final Widget child;
//  final List<Widget> actions;
//  final Color backgroundColor;
//  final double elevation;
//
//  const PageStructure({
//    Key key,
//    this.title,
//    this.child,
//    this.actions,
//    this.backgroundColor,
//    this.elevation,
//  }) : super(key: key);

  @override
  _PageStructureState createState() => _PageStructureState();
}

class _PageStructureState extends State<PageStructure> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Home(),
    ChatBox(),
    Listings(),
    Messages(),
    Government(),
  ];
  final List<String> pageTitle = [
    'Home',
    'Chat Box',
    'Listings',
    'Messages',
    'Government',
  ];
  @override
  Widget build(BuildContext context) {
    final angle = ZoomDrawer.isRTL() ? 180 * pi / 180 : 0.0;
//    int _currentPage =
//    context.select<MenuProvider, int>((provider) => provider.currentPage);
//    final container = Container(
//      color: Colors.grey[300],
//      child: Center(
//        child: Text(
//            "${tr("current")}: ${HomeScreen.mainMenu[_currentPage].title}"),
//      ),
//    );
//    final color = Theme
//        .of(context)
//        .accentColor;
//    final style = TextStyle(color: blueColor);

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: blueColor,
        automaticallyImplyLeading: false,
        // android: (_) => MaterialAppBarData(elevation: elevation),
        centerTitle: true,
        title: _currentIndex != 0
            ? Text(
                pageTitle[_currentIndex],
              )
            : Image(
                image: AssetImage('assets/icons/logo.png'),
                height: 40,
              ),
        leading: Transform.rotate(
          angle: angle,
          child: IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
          ),
        ),
        // trailingActions: actions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: blueColor,
        unselectedItemColor: greyColor,
        elevation: 50.0,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/icons/home.png'),
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 10),
            ),
            activeIcon: Image(
              image: AssetImage('assets/icons/home.png'),
              color: blueColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/icons/chatbox.png'),
            ),
            title: Text(
              'Chat Box',
              style: TextStyle(fontSize: 10),
            ),
            activeIcon: Image(
              image: AssetImage('assets/icons/chatbox.png'),
              color: blueColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/icons/listing.png'),
            ),
            title: Text(
              'Listings',
              style: TextStyle(fontSize: 10),
            ),
            activeIcon: Image(
              image: AssetImage('assets/icons/listing.png'),
              color: blueColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/icons/mesage.png'),
            ),
            title: Text(
              'Messages',
              style: TextStyle(fontSize: 10),
            ),
            activeIcon: Image(
              image: AssetImage('assets/icons/mesage.png'),
              color: blueColor,
            ),
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.person,color: greyColor,),
            icon: Image(
              image: AssetImage('assets/icons/government.png'),
            ),
            title: Text(
              'Government',
              style: TextStyle(fontSize: 10),
            ),
            activeIcon: Image(
              image: AssetImage('assets/icons/government.png'),
              color: blueColor,
            ),
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
