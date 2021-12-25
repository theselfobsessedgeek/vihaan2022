import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      constraints: BoxConstraints(
        minHeight: _size.height * 0.4,
        minWidth: _size.width,
      ),
      // padding: EdgeInsets.symmetric(
      //   horizontal: sectionHorizontalPadding(_size.width),
      //   vertical: sectionVerticalPadding(_size.height),
      // ),
    );
  }
}
