import 'package:flutter/material.dart';


class YourLibaray extends StatelessWidget {
  const YourLibaray({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Text('YourLibaray', style: TextStyle(fontSize: 40, color: Colors.yellow),
    ));
  }
}