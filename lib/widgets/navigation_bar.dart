import 'package:claponn/utilities/shadowStyle_constants.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int index)? onTap;
  const CustomNavigationBar({
    Key? key,
    this.selectedIndex = 0,
    this.onTap,
  }) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 24.0),
        height: 74.0,
        width: MediaQuery.of(context).size.width - 28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          boxShadow: kNavigationBarShadow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: iconsButton
              .asMap()
              .entries
              .map((e) => FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    onPressed: () {},
                    child: Icon(
                      e.value,
                      color: const Color(0xFF656565),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

List<IconData> iconsButton = [
  (Icons.home_outlined),
  (Icons.settings_outlined),
  (Icons.messenger_outline_outlined),
  (Icons.person_outline_outlined),
];
