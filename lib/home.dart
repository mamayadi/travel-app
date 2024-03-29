import 'package:flutter/material.dart';
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'destinationrec.dart';
import 'gridDest.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  String currentTitle = "Home";
  Color currentColor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    Color inactiveColor = Theme.of(context).indicatorColor;
    return Scaffold(
      bottomNavigationBar: CubertoBottomBar(
        barBorderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
        inactiveIconColor: inactiveColor,
        tabStyle: CubertoTabStyle
            .STYLE_FADED_BACKGROUND, // By default its CubertoTabStyle.STYLE_NORMAL
        initialSelection: 0, // By default its 0
        // drawer: CubertoDrawer.NO_DRAWER, // By default its NO_DRAWER (Availble START_DRAWER and END_DRAWER as per where you want to how the drawer icon in Cuberto Bottom bar)
        tabs: [
          TabData(
            iconData: Feather.home,
            title: "Home",
            tabColor: Color(0xFF2F95A1),
          ),
          TabData(
            iconData: Feather.heart,
            title: "Favorites",
            tabColor: Color(0xFFFF8E91),
          ),
          TabData(
              iconData: Feather.briefcase,
              title: "Jobs",
              tabColor: Color(0xFFFAA978)),
          TabData(
              iconData: Feather.user,
              title: "Profile",
              tabColor: Color(0xFF8B85C3)),
        ],
        onTabChangedListener: (position, title, color) {
          setState(() {
            currentPage = position;
            currentTitle = title;
            currentColor = color;
          });
        },
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 6.0, 15.0, 0.0),
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Hi Antenio!',
                        style: TextStyle(
                          fontFamily: 'SF pro',
                          fontWeight: FontWeight.w900,
                          fontSize: 32.0,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      )
                    ]),
                SizedBox(height: 6.0),
                Row(
                  children: <Widget>[
                    Text(
                      'WHERE TO',
                      style: TextStyle(
                          fontFamily: 'SF pro',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '54 KING PORTS',
                      style: TextStyle(
                          color: Color(0xFFFF8E91),
                          fontFamily: 'SF pro',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 20.0,
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: Color(0xFF2F95A1).withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0)),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.hotel),
                              color: Color(0xFF2F95A1),
                              onPressed: () {
                                print("filled background");
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          'HOTELS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.0),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: Color(0xFFFE9393).withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0)),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.airplanemode_active),
                              color: Color(0xFFFE9393),
                              onPressed: () {
                                print("filled background");
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          'FLIGHTS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.0),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: Color(0xFFFAA978).withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0)),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.fastfood),
                              color: Color(0xFFFAA978),
                              onPressed: () {
                                print("filled background");
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          'FOODS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.0),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: Color(0xFF8B85C3).withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0)),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.date_range),
                              color: Color(0xFF8B85C3),
                              onPressed: () {
                                print("filled background");
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          'EVENTS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.0),
                DestinationRec(title: 'Best Destination'),
                GridDest(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
