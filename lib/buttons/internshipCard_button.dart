import 'package:flutter/material.dart';
import 'package:claponn/utilities/shadowStyle_constants.dart';

class InternshipCard extends StatelessWidget {
  const InternshipCard({
    Key? key,
    required this.image,
    required this.cardLabel,
    required this.cardColor1,
    required this.cardColor2,
    required this.cardLabelColor,
  }) : super(key: key);

  final Image image;
  final String cardLabel;
  final Color cardColor1;
  final Color cardColor2;
  final Color cardLabelColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 27.0, 21.0, 20.0),
      height: 180.0,
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
        boxShadow: kCardShadow,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            cardColor1,
            cardColor2,
          ],
        ),
      ),
      child: RawMaterialButton(
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              cardLabel,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: cardLabelColor,
              ),
            ),
            image,
          ],
        ),
      ),
    );
  }
}
