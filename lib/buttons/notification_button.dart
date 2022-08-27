import 'package:claponn/utilities/shadowStyle_constants.dart';
import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: kNotificationButtonShadow,
      ),
      child: RawMaterialButton(
        onPressed: onPress,
        shape: const CircleBorder(),
        fillColor: Colors.white,
        constraints: const BoxConstraints.tightFor(
          width: 65.0,
          height: 65.0,
        ),
        child: Image.asset(
          'images/notificationIcon_vector.png',
          width: 35.0,
          height: 25.0,
        ),
      ),
    );
  }
}
