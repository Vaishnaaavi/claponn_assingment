import 'package:claponn/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Claponn());

class Claponn extends StatelessWidget {
  const Claponn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
