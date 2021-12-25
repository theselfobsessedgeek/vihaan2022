import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vihaan2022/constants.dart';
import 'package:vihaan2022/screens/aboutUs.dart';
import 'package:vihaan2022/screens/faqs.dart';
import 'package:vihaan2022/screens/footer.dart';
import 'package:vihaan2022/screens/landingPage.dart';
import 'package:vihaan2022/screens/prizes.dart';
import 'package:vihaan2022/screens/speakers.dart';
import 'package:vihaan2022/screens/sponsors.dart';
import 'package:vihaan2022/screens/testimonial.dart';
import 'package:vihaan2022/screens/timeline.dart';
import 'package:vihaan2022/screens/tracks.dart';

class VihaanHomepageWidget extends StatefulWidget {
  const VihaanHomepageWidget({Key? key}) : super(key: key);

  @override
  State<VihaanHomepageWidget> createState() => _VihaanHomepageWidgetState();
}

class _VihaanHomepageWidgetState extends State<VihaanHomepageWidget> {
  late AutoScrollController _controller;

  final scrollDirection = Axis.vertical;

  Widget _wrapScrollTag({required int index, required Widget child}) =>
      AutoScrollTag(
        key: ValueKey(index),
        controller: _controller,
        index: index,
        child: child,
      );

  @override
  void initState() {
    _controller = AutoScrollController(axis: scrollDirection);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: (getDeviceType(_size) != DeviceScreenType.desktop)
            ? ListView(
                children: [
                  ListTile(
                      onTap: () {
                        _controller.scrollToIndex(1);
                        Navigator.pop(context);
                      },
                      title: Text("About")),
                  ListTile(
                      onTap: () {
                        _controller.scrollToIndex(2);
                        Navigator.pop(context);
                      },
                      title: Text("Tracks")),
                  ListTile(
                      onTap: () {
                        _controller.scrollToIndex(3);
                        Navigator.pop(context);
                      },
                      title: Text("Prizes")),
                  ListTile(
                      onTap: () {
                        _controller.scrollToIndex(4);
                        Navigator.pop(context);
                      },
                      title: Text("Speakers")),
                  ListTile(
                      onTap: () {
                        _controller.scrollToIndex(5);
                        Navigator.pop(context);
                      },
                      title: Text("Sponsors")),
                  ListTile(
                      onTap: () {
                        _controller.scrollToIndex(6);
                        Navigator.pop(context);
                      },
                      title: Text("Schedule")),
                  ListTile(
                      onTap: () {
                        _controller.scrollToIndex(7);
                        Navigator.pop(context);
                      },
                      title: Text("FAQs")),
                  ListTile(
                      onTap: () {
                        _controller.scrollToIndex(8);
                        Navigator.pop(context);
                      },
                      title: Text("Contact Us")),
                ],
              )
            : null,
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(kContainerRoundnessConstant),
                ),
                elevation: 20.0,
                leading: Builder(
                  builder: (BuildContext context) {
                    return (getDeviceType(_size) != DeviceScreenType.desktop)
                        ? IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            tooltip: MaterialLocalizations.of(context)
                                .openAppDrawerTooltip,
                          )
                        : SizedBox();
                  },
                ),
                actions: (getDeviceType(_size) == DeviceScreenType.desktop)
                    ? [
                        TextButton(
                          onPressed: () {
                            _controller.scrollToIndex(1);
                          },
                          child: const Text(
                            "About",
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _controller.scrollToIndex(2);
                          },
                          child: const Text(
                            "Tracks",
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _controller.scrollToIndex(3);
                          },
                          child: const Text(
                            "Prizes",
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _controller.scrollToIndex(4);
                          },
                          child: const Text(
                            "Speakers",
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _controller.scrollToIndex(5);
                          },
                          child: const Text(
                            "Sponsors",
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _controller.scrollToIndex(6);
                          },
                          child: const Text(
                            "Schedule",
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _controller.scrollToIndex(7);
                          },
                          child: const Text(
                            "FAQs",
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _controller.scrollToIndex(8);
                          },
                          child: const Text(
                            "Contact Us",
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                      ]
                    : [],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType != DeviceScreenType.watch) {
              return SingleChildScrollView(
                controller: _controller,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      _wrapScrollTag(
                        index: 0,
                        child: const LandingPage(),
                      ),
                      _wrapScrollTag(
                        index: 1,
                        child: const AboutUs(),
                      ),
                      _wrapScrollTag(
                        index: 2,
                        child: const Tracks(),
                      ),
                      _wrapScrollTag(
                        index: 3,
                        child: const Prizes(),
                      ),
                      _wrapScrollTag(
                        index: 4,
                        child: const Speakers(),
                      ),
                      _wrapScrollTag(
                        index: 5,
                        child: const Sponsors(),
                      ),
                      const Testimonial(),
                      _wrapScrollTag(
                        index: 6,
                        child: const Timeline(),
                      ),
                      _wrapScrollTag(
                        index: 7,
                        child: const FAQs(),
                      ),
                      _wrapScrollTag(
                        index: 8,
                        child: const Footer(),
                      ),
                    ],
                  ),
                ),
              );
            }
            return Container(
              color: Theme.of(context).primaryColor,
              constraints: BoxConstraints(
                minHeight: _size.height,
                minWidth: _size.width,
              ),
              child: const Center(
                child: Text("Vihaan #5.0"),
              ),
            );
          },
        ),
      ),
    );
  }
}
