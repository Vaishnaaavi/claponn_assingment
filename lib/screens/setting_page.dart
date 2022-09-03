import 'package:claponn/screens/message_screen.dart';
import 'package:claponn/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:claponn/home_page.dart';

class SettingScreen extends StatefulWidget {
  static String id = 'setting_screen';

  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        bottomNavigationBar: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.only(bottom: 24.0),
            width: MediaQuery.of(context).size.width - 40,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 8,
                  activeColor: const Color(0xFFFA8842),
                  iconSize: 24,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.grey.withOpacity(.10),
                  color: Colors.grey,
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                      onPressed: () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                    ),
                    const GButton(
                      icon: LineIcons.heart,
                      text: 'Likes',
                      // onPressed: () async {
                      //   await Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const SettingScreen()));
                      // }
                    ),
                    GButton(
                      icon: LineIcons.search,
                      text: 'Search',
                      onPressed: () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MessageScreen()));
                      },
                    ),
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',
                      onPressed: () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfileScreen()));
                      },
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        body: const Center(
          child: Text(
            'SettingPage',
          ),
        ),
      ),
    );
  }
}
