import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

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
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(
              // minHeight: _size.height,
              minWidth: _size.width,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: sectionHorizontalPadding(_size.width),
              vertical: sectionVerticalPadding(_size.height),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "ABOUT US",
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                              textAlign: TextAlign.justify,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ListTile(
                                      title: Text(
                                        "WHERE",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                      subtitle: Text(
                                        "Delhi Technological University",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                      leading: Icon(
                                        Icons.language,
                                        color: Theme.of(context).focusColor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      title: Text(
                                        "WHEN",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                      subtitle: Text(
                                        "26-27 February, 2022",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                      leading: Icon(
                                        Icons.calendar_today_outlined,
                                        color: Theme.of(context).focusColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible:
                          (getDeviceType(_size) != DeviceScreenType.mobile),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              kContainerRoundnessConstant),
                          child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/vihaan2021-b1b86.appspot.com/o/images%2Flogos%2FVihaan_Aboutus.jpg?alt=media&token=fc66c23e-2e4a-45e3-968d-37a6ce1e9295",
                            loadingBuilder: (context, child, loadingProgress) {
                              return (loadingProgress == null)
                                  ? child
                                  : const Center(
                                      child: CircularProgressIndicator(),
                                    );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
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
                    vertical: sectionVerticalPadding(_size.height),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: sectionHorizontalPadding(_size.width),
                    vertical: sectionVerticalPadding(_size.height),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "GLIMPSE OF VIHAAN #4.0",
                          style: Theme.of(context).textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        children: [
                          Visibility(
                            visible: (getDeviceType(_size) !=
                                DeviceScreenType.mobile),
                            child: Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    kContainerRoundnessConstant),
                                child: Image.network(
                                  "https://firebasestorage.googleapis.com/v0/b/vihaan2021-b1b86.appspot.com/o/images%2Flogos%2FVihaan_Aboutus.jpg?alt=media&token=fc66c23e-2e4a-45e3-968d-37a6ce1e9295",
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    return (loadingProgress == null)
                                        ? child
                                        : const Center(
                                            child: CircularProgressIndicator(),
                                          );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: GridView(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1 / 1,
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 15,
                                ),
                                children: [
                                  Card(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.access_time_outlined,
                                          color: Theme.of(context).focusColor,
                                          size: getValueForScreenType<double>(
                                            context: context,
                                            mobile: 20.0,
                                            tablet: 30.0,
                                            desktop: 40.0,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            "24\nHours",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Card(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.library_books_outlined,
                                          color: Theme.of(context).focusColor,
                                          size: getValueForScreenType<double>(
                                            context: context,
                                            mobile: 20.0,
                                            tablet: 30.0,
                                            desktop: 40.0,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            "60+\nProjects",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Card(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.person_outline_outlined,
                                          color: Theme.of(context).focusColor,
                                          size: getValueForScreenType<double>(
                                            context: context,
                                            mobile: 20.0,
                                            tablet: 30.0,
                                            desktop: 40.0,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            "800+\nParticipants",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Card(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.public,
                                          color: Theme.of(context).focusColor,
                                          size: getValueForScreenType<double>(
                                            context: context,
                                            mobile: 20.0,
                                            tablet: 30.0,
                                            desktop: 40.0,
                                          ),
                                        ),
                                        Text(
                                          "35+\nCities",
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
