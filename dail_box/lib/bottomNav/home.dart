import 'package:dail_box/util/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var array = [
    'All Categories',
    'B2b',
    'Shopping',
    'Daily Needs',
    'Travel',
    'Lawyers',
    'Hotels',
    'Doctors',
    'Daily Needs',
    'Travel',
    'Lawyers',
    'Hotels',
    'Doctors',
    'Daily Needs',
    'Travel',
    'Lawyers',
    'Hotels',
    'Doctors',
  ];
  var trending_array = [0, 1, 2, 3];
  var recentListiing_array = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  int? a;
  int? recentListing_itemCount;

  @override
  void initState() {
    // TODO: implement initState
    a = (array.length / 8).toInt();
    int b = (array.length % 8);
    if (b > 0) {
      a = a! + 1;
    }

    recentListing_itemCount = (recentListiing_array.length / 2).toInt();
    int c = (recentListiing_array.length % 2);
    if (c > 0) {
      recentListing_itemCount = recentListing_itemCount! + 1;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: redColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  // height: 100.0,
                  margin: const EdgeInsets.only(bottom: 6.0),
                  //Same as `blurRadius` i guess
                  padding: const EdgeInsets.all(6.0),
                  //Same as `blurRadius` i guess
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400]!,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: greyColor,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        hintStyle: TextStyle(color: greyColor, fontSize: 14),
                        hintText: "Search service or industry"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Most Popular',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View All>',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   height: 230,
            //   child: new Swiper(
            //     outer: true,
            //     itemBuilder: (c, i) {
            //       return swipeCard(i);
            //     },
            //     pagination: new SwiperPagination(
            //         margin: new EdgeInsets.all(5.0),
            //         builder: DotSwiperPaginationBuilder(
            //             activeColor: blueColor, color: greyColor)),
            //     itemCount: a,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'What\'s Trending?',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  children: trending_array.map((i) {
                    return InkWell(
                      onTap: () {
                        print(i);
                      },
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: Image.network(
                                  "https://miro.medium.com/max/700/0*DRhSVBwgBm_iwRYg",
                                  fit: BoxFit.fill,
                                ),
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            Padding(
                              padding: new EdgeInsets.all(12.0),
                              child: new Text(
                                "Automobiles",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Get Exclusive Discount 50% Off',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  Text(
                    'Online Fashion Destination',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  Text(
                    'Clothing, Shoes & Many More!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    color: Colors.pink,
                    child: Text(
                      'Search More',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Most Recent Listings',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.all(10),
            //   height: 240,
            //   child: new Swiper(
            //     outer: true,
            //     itemBuilder: (c, i) {
            //       return recentListingCard(i);
            //     },
            //     pagination: new SwiperPagination(
            //         margin: new EdgeInsets.all(5.0),
            //         builder: DotSwiperPaginationBuilder(
            //             activeColor: blueColor, color: greyColor)),
            //     itemCount: recentListing_itemCount,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Looking For Something Else?',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Car Maintainance',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '20 Shops',
                              style: TextStyle(color: greyColor, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext ctxt, int index) {
                    return Divider();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget swipeCard(int index) {
    int last_index = index * 8;
    if (last_index + 8 > array.length) {
      last_index = array.length;
    } else {
      last_index = index * 8 + 8;
    }
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      childAspectRatio: 1.0,
      //padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: array.sublist(index * 8, last_index).map((industry) {
        return InkWell(
          onTap: () {
            print(industry);
          },
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new SizedBox(
                child: new Container(
                  child: new Image.network(
                      "https://icon-library.net/images/icon-for-hotel/icon-for-hotel-12.jpg"),
                ),
                height: 40,
                width: 40,
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 6.0),
                child: new Text(
                  industry,
                  style: TextStyle(fontSize: 13),
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget recentListingCard(int index) {
    int last_index = index * 2;
    if (last_index + 2 > recentListiing_array.length) {
      last_index = recentListiing_array.length;
    } else {
      last_index = index * 2 + 2;
    }
    return GridView.count(
      // runSpacing:  6.0,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      //padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: recentListiing_array.sublist(index * 2, last_index).map((i) {
        return InkWell(
          onTap: () {
            print(i);
          },
          child: Card(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Image.network(
                      "https://www.the-xperts.com/upload/images/-9514984124.JPG.png",
                      fit: BoxFit.fill,
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 6.0, left: 10),
                  child: new Text(
                    "Laptop & Accessories",
                    style: TextStyle(color: blueColor, fontSize: 13),
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 6.0, left: 10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: greyColor,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "+923319878987",
                        style: TextStyle(color: greyColor, fontSize: 11),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

// class DotSwiperPaginationBuilder extends SwiperPlugin {
//   ///color when current index,if set null , will be Theme.of(context).primaryColor
//   final Color? activeColor;

//   ///,if set null , will be Theme.of(context).scaffoldBackgroundColor
//   final Color? color;

//   ///Size of the dot when activate
//   final double activeSize;

//   ///Size of the dot
//   final double size;

//   /// Space between dots
//   final double space;

//   final Key? key;

//   const DotSwiperPaginationBuilder(
//       {this.activeColor,
//       this.color,
//       this.key,
//       this.size: 10.0,
//       this.activeSize: 10.0,
//       this.space: 3.0});

//   @override
//   Widget build(BuildContext context, SwiperPluginConfig config) {
//     if (config.itemCount > 20) {
//       print(
//           "The itemCount is too big, we suggest use FractionPaginationBuilder instead of DotSwiperPaginationBuilder in this sitituation");
//     }
//     Color activeColor = this.activeColor!;
//     Color color = this.color!;

//     if (activeColor == null || color == null) {
//       ThemeData themeData = Theme.of(context);
//       activeColor = this.activeColor ?? themeData.primaryColor;
//       color = this.color ?? themeData.scaffoldBackgroundColor;
//     }

//     if (config.indicatorLayout != PageIndicatorLayout.NONE &&
//         config.layout == SwiperLayout.DEFAULT) {
//       return new PageIndicator(
//         count: config.itemCount,
//         controller: config.pageController,
//         layout: PageIndicatorLayout.NONE,
//         size: size,
//         activeColor: activeColor,
//         color: color,
//         space: space,
//       );
//     }

//     List<Widget> list = [];

//     int itemCount = config.itemCount;
//     int activeIndex = config.activeIndex;

//     for (int i = 0; i < itemCount; ++i) {
//       bool active = i == activeIndex;
//       list.add(Container(
//         key: Key("pagination_$i"),
//         margin: EdgeInsets.all(space),
//         child: Container(
//           decoration: BoxDecoration(
//               border: Border.all(color: active ? activeColor : color),
//               color: active ? activeColor : color,
//               shape: BoxShape.rectangle),
//           width: active ? activeSize : size,
//           height: active ? activeSize : size,
//         ),
//       ));
//     }

//     if (config.scrollDirection == Axis.vertical) {
//       return new Column(
//         key: key,
//         mainAxisSize: MainAxisSize.min,
//         children: list,
//       );
//     } else {
//       return new Row(
//         key: key,
//         mainAxisSize: MainAxisSize.min,
//         children: list,
//       );
//     }
//   }
// }

// class RectSwiperPaginationBuilder extends SwiperPlugin {
//   ///color when current index,if set null , will be Theme.of(context).primaryColor
//   final Color activeColor;

//   ///,if set null , will be Theme.of(context).scaffoldBackgroundColor
//   final Color? color;

//   ///Size of the rect when activate
//   final Size activeSize;

//   ///Size of the rect
//   final Size size;

//   /// Space between rects
//   final double space;

//   final Key? key;

//   const RectSwiperPaginationBuilder(
//       {this.activeColor: blueColor,
//       this.color,
//       this.key,
//       this.size: const Size(10.0, 2.0),
//       this.activeSize: const Size(10.0, 2.0),
//       this.space: 3.0});

//   @override
//   Widget build(BuildContext context, SwiperPluginConfig config) {
//     ThemeData themeData = Theme.of(context);
//     // Color activeColor = this.activeColor ?? themeData.primaryColor;
//     Color color = this.color ?? themeData.scaffoldBackgroundColor;

//     List<Widget> list = [];

//     if (config.itemCount > 20) {
//       print(
//           "The itemCount is too big, we suggest use FractionPaginationBuilder instead of DotSwiperPaginationBuilder in this sitituation");
//     }

//     int itemCount = config.itemCount;
//     int activeIndex = config.activeIndex;

//     for (int i = 0; i < itemCount; ++i) {
//       bool active = i == activeIndex;
//       Size size = active ? this.activeSize : this.size;
//       list.add(SizedBox(
//         width: size.width,
//         height: size.height,
//         child: Container(
//           color: active ? redColor : color,
//           key: Key("pagination_$i"),
//           margin: EdgeInsets.all(space),
//         ),
//       ));
//     }

//     if (config.scrollDirection == Axis.vertical) {
//       return new Column(
//         key: key,
//         mainAxisSize: MainAxisSize.min,
//         children: list,
//       );
//     } else {
//       return new Row(
//         key: key,
//         mainAxisSize: MainAxisSize.min,
//         children: list,
//       );
//     }
//   }
// }
