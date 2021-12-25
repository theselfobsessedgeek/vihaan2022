import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants.dart';

class Tracks extends StatelessWidget {
  const Tracks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
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
              "TRACKS",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: getValueForScreenType<int>(
                  context: context,
                  mobile: 1,
                  tablet: 2,
                  desktop: 2,
                ),
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 2 / 1,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.white60,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(kContainerRoundnessConstant)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        AspectRatio(
                          aspectRatio: 2 / 3,
                          child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/vihaan2021-b1b86.appspot.com/o/images%2Ftracks%2Ftrack_fintech.png?alt=media&token=572e16ee-ba82-431c-a51a-7f6e19bebeb1'),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "vhsbvjv",
                                maxLines: 1,
                                style: GoogleFonts.montserrat(
                                  textStyle:
                                      Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Text(
                                "https://firebasestorage.googleapis.com/v0/b/vihaan2021-b1b86.appspot.com/o/images%2Ftracks%2Ftrack_fintech.png?alt=media&token=572e16ee-ba82-431c-a51a-7f6e19bebeb1",
                                maxLines: getValueForScreenType<int>(
                                  context: context,
                                  mobile: 4,
                                  tablet: 3,
                                  desktop: 4,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
