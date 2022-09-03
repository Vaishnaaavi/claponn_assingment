import 'package:flutter/material.dart';

final kCardShadow = [
  BoxShadow(
    color: const Color(0xFF000000).withOpacity(.25),
    spreadRadius: -3.0,
    blurRadius: 20.0,
    offset: const Offset(0.0, 0.4),
  ),
];

final kHomeSearchBarShadow = [
  BoxShadow(
    color: const Color(0xFF000000).withOpacity(.25),
    blurRadius: 13.0,
    offset: const Offset(3.0, 4.0),
  ),
];

final kNotificationButtonShadow = [
  BoxShadow(
    color: const Color(0xFF000000).withOpacity(.25),
    spreadRadius: -3.0,
    blurRadius: 10.0,
    offset: const Offset(0, 3.00),
  ),
];

final kNavigationBarShadow = [
  BoxShadow(
    blurRadius: 33.0,
    spreadRadius: -3,
    color: const Color(0xFF000000).withOpacity(.25),
  ),
];
