import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants.dart';

class Sponsors extends StatelessWidget {
  const Sponsors({Key? key}) : super(key: key);

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
        // minHeight: _size.height,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "SPONSORS",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "GOLD",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: getValueForScreenType<int>(
                context: context,
                mobile: 2,
                tablet: 3,
                desktop: 4,
              ),
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemBuilder: (_, int index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.blueAccent,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "SILVER",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: getValueForScreenType<int>(
                context: context,
                mobile: 3,
                tablet: 4,
                desktop: 5,
              ),
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemBuilder: (_, int index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.yellow,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "BRONZE",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: getValueForScreenType<int>(
                context: context,
                mobile: 4,
                tablet: 5,
                desktop: 6,
              ),
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemBuilder: (_, int index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.yellow,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "COMMUNITY PARTNER",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: getValueForScreenType<int>(
                context: context,
                mobile: 4,
                tablet: 5,
                desktop: 6,
              ),
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemBuilder: (_, int index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.yellow,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "MEDIA & OUTREACH PARTNER",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: getValueForScreenType<int>(
                context: context,
                mobile: 4,
                tablet: 5,
                desktop: 6,
              ),
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemBuilder: (_, int index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.yellow,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
