import 'package:flutter/material.dart';

import '../constants.dart';

class Timeline extends StatelessWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(kContainerRoundnessConstant),
        ),
      ),
      constraints: BoxConstraints(
        minHeight: _size.height,
        minWidth: _size.width,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: sectionHorizontalPadding(_size.width),
        vertical: sectionVerticalPadding(_size.height),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: sectionHorizontalPadding(_size.width),
        vertical: sectionVerticalPadding(_size.height),
      ),
    );
  }
}
