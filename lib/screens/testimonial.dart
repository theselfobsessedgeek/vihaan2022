import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
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
              "TESTIMONIALS",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: getValueForScreenType<int>(
                  context: context,
                  mobile: 1,
                  tablet: 1,
                  desktop: 2,
                ),
                crossAxisSpacing: 25.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 5 / 1,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(kContainerRoundnessConstant),
                        ),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://www.gravatar.com/avatar/c97e09efbd01ce2633edd27688bc9751?s=256&d=identicon&r=PG",
                          ),
                        ),
                        title: Text(
                          "rufh9wahg9urh9geriugnaognuen",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          "nvuregouregiuhseriugbviuebhviuerhgahprwughiuargh",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () {},
                        trailing: IconButton(
                          icon: Icon(
                            Icons.play_circle_outline,
                            color: Theme.of(context).focusColor,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
