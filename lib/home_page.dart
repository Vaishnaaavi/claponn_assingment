import 'package:claponn/screens/message_screen.dart';
import 'package:claponn/screens/profile_page.dart';
import 'package:claponn/screens/setting_page.dart';
import 'package:claponn/utilities/textStyle_constants.dart';
import 'package:flutter/material.dart';
import 'buttons/notification_button.dart';
import 'buttons/search_bar.dart';
import 'buttons/category_tab_button.dart';
import 'buttons/internshipCard_button.dart';
import 'buttons/communityCard_button.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_screen';

  // final int initialPage;
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.grey.withOpacity(.10),
                  color: Colors.grey,
                  tabs: [
                    const GButton(
                      icon: LineIcons.home,
                      text: 'Home',
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
        body: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                        left: 32.0, top: 32.0, right: 26.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 38.5,
                          backgroundImage:
                              const AssetImage('images/userPic.png'),
                          child: RawMaterialButton(
                            onPressed: () {},
                          ),
                        ),
                        NotificationButton(
                          onPress: () {},
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 21.0, top: 20.0, bottom: 22.0),
                    child: Text(
                      'Let’s Search for it....',
                      style: kHeadingTextStyle,
                    ),
                  ),
                  const HomeSearchBar(),
                  Container(
                    padding: const EdgeInsets.only(
                        right: 22.0, left: 21.0, top: 22.0, bottom: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Text(
                          'Categories',
                          style: kHeadingTextStyle,
                        ),
                        Text(
                          'Load More ',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFF7C7C7C),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CategoryTabButton(
                        label: 'Mobile App',
                        image: Image.asset('images/MobileApp_TabIcon.png'),
                      ),
                      CategoryTabButton(
                        label: 'Web App',
                        image: Image.asset('images/webApp_TabIcon.png'),
                      ),
                      CategoryTabButton(
                        label: 'Marketing',
                        image: Image.asset('images/marketing_TabIcon.png'),
                      ),
                      CategoryTabButton(
                        label: 'Accounts',
                        image: Image.asset('images/accounts_TabIcon.png'),
                      ),
                      CategoryTabButton(
                        label: 'Legals',
                        image: Image.asset('images/legals_TabIcon.png'),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 21.0, top: 24.0),
                    child: Text(
                      'Internship',
                      style: kHeadingTextStyle,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 19.0, top: 20.0, bottom: 20.0),
                      child: Row(
                        children: [
                          InternshipCard(
                            image: Image.asset('images/flutter_icon.png'),
                            cardLabel: 'Flutter Developer',
                            cardColor1: const Color(0xFFFF5F5F),
                            cardColor2: const Color(0xFFEFDF53),
                            cardLabelColor: Colors.black,
                          ),
                          const SizedBox(width: 10.0),
                          InternshipCard(
                            image: Image.asset('images/React_icon.png'),
                            cardLabel: 'React.js Developer',
                            cardColor1: const Color(0xFF00C2FF),
                            cardColor2: const Color(0xFF4F19C1),
                            cardLabelColor: Colors.white,
                          ),
                          const SizedBox(width: 10.0),
                          InternshipCard(
                            image: Image.asset('images/Angular_icon.png'),
                            cardLabel: 'Angular Developer',
                            cardColor1: const Color(0xFF1AF115),
                            cardColor2: const Color(0xFF000000),
                            cardLabelColor: Colors.white,
                          ),
                          const SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 21.0),
                    child: Text(
                      'Community',
                      style: kHeadingTextStyle,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 19.0, top: 20.0, bottom: 20.0),
                      child: Row(
                        children: const [
                          CommunityCard(
                            color: Color(0xFF791E8F),
                            label: 'Entrepren-eurship',
                          ),
                          SizedBox(width: 10.0),
                          CommunityCard(
                            color: Color(0xFFEEAB00),
                            label: 'Content Creation',
                          ),
                          SizedBox(width: 10.0),
                          CommunityCard(
                            color: Color(0xFF00C2FF),
                            label: 'Marketing',
                          ),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
