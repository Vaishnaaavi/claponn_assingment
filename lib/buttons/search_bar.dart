import 'package:claponn/utilities/shadowStyle_constants.dart';
import 'package:claponn/utilities/textStyle_constants.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 18.0, right: 12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: kHomeSearchBarShadow,
        ),
        height: 58.0,
        width: 390.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Whome are you looking for?',
              style: kSearchBarTextStyle,
            ),
            Image.asset('images/searchIcon_vector.png'),
          ],
        ),
      ),
    );
  }
}
