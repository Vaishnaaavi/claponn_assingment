import 'package:claponn/screens/profile_page.dart';
import 'package:claponn/screens/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../home_page.dart';

class MessageScreen extends StatefulWidget {
  static String id = 'message_screen';
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  int _selectedIndex = 2;

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
                    GButton(
                        icon: LineIcons.heart,
                        text: 'Likes',
                        onPressed: () async {
                          await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SettingScreen()));
                        }),
                    const GButton(
                      icon: LineIcons.search,
                      text: 'Search',
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
            'MessageScreen',
          ),
        ),
      ),
    );
  }
}
