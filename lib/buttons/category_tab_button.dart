import 'package:claponn/utilities/shadowStyle_constants.dart';
import 'package:claponn/utilities/textStyle_constants.dart';
import 'package:flutter/material.dart';

class CategoryTabButton extends StatelessWidget {
  const CategoryTabButton({
    Key? key,
    required this.label,
    required this.image,
  }) : super(key: key);

  final String label;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: kCardShadow,
            ),
            child: RawMaterialButton(
              onPressed: () {},
              constraints: const BoxConstraints.tightFor(
                height: 65.18,
                width: 65.18,
              ),
              child: image,
            ),
          ),
          const SizedBox(
            height: 5.82,
          ),
          Text(
            label,
            style: kTabButtonTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
