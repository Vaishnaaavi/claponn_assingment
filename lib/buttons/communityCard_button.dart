import 'package:flutter/material.dart';
import 'package:claponn/utilities/shadowStyle_constants.dart';

class CommunityCard extends StatelessWidget {
  const CommunityCard({
    Key? key,
    required this.color,
    required this.label,
  }) : super(key: key);

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0),
          color: color,
          boxShadow: kCardShadow,
        ),
        height: 180.0,
        width: 180.0,
        child: Text(
          label,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
