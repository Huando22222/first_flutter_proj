import 'package:flutter/material.dart';
import 'package:flutter_application_test/pages/HomePage.dart';
import 'package:flutter_application_test/pages/ProfilePage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menu currentIndex = Menu.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex.index],
      bottomNavigationBar: CustomNavigation(
        currentIndex: currentIndex.index,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      //BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite), label: "Favorites"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      //   ],
      //   currentIndex: currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   backgroundColor: Colors.amber,
      // ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text("page2"),
    ),
    Center(
      child: Text("add"),
    ),
    Center(
      child: Text("message"),
    ),
    ProfilePage(),
  ];
}

enum Menu {
  home,
  favorite,
  add,
  message,
  user,
}

class CustomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<Menu> onTap;
  const CustomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(25),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        onTap(Menu.home);
                      },
                      icon: SvgPicture.asset("assets/svg/ic_home.svg"),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        onTap(Menu.favorite);
                      },
                      icon: SvgPicture.asset("assets/svg/ic_favorite.svg"),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        onTap(Menu.message);
                      },
                      icon: SvgPicture.asset("assets/svg/ic_massages.svg"),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        onTap(Menu.user);
                      },
                      icon: SvgPicture.asset("assets/svg/ic_user.svg"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menu.add),
              child: Container(
                width: 64,
                height: 64,
                decoration:
                    BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
