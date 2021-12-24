import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vihaan2022/screens/landingPage.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 20.0,
        leading: Builder(
          builder: (BuildContext context) {
            return (getDeviceType(_size) != DeviceScreenType.desktop)
                ? IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
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
                  child: const Text("About"),
                ),
                TextButton(
                  onPressed: () {
                    _controller.scrollToIndex(2);
                  },
                  child: const Text("Tracks"),
                ),
                TextButton(
                  onPressed: () {
                    _controller.scrollToIndex(3);
                  },
                  child: const Text("Prizes"),
                ),
                TextButton(
                  onPressed: () {
                    _controller.scrollToIndex(4);
                  },
                  child: const Text("Speakers"),
                ),
                TextButton(
                  onPressed: () {
                    _controller.scrollToIndex(5);
                  },
                  child: const Text("Sponsors"),
                ),
                TextButton(
                  onPressed: () {
                    _controller.scrollToIndex(6);
                  },
                  child: const Text("Schedule"),
                ),
                TextButton(
                  onPressed: () {
                    _controller.scrollToIndex(7);
                  },
                  child: const Text("FAQs"),
                ),
                TextButton(
                  onPressed: () {
                    _controller.scrollToIndex(8);
                  },
                  child: const Text("Contact Us"),
                ),
                const SizedBox(width: 10.0),
              ]
            : [],
      ),
      body: ScreenTypeLayout.builder(
        mobile: (BuildContext context) => SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              _wrapScrollTag(
                index: 0,
                child: LandingPage(),
              ),
              _wrapScrollTag(
                index: 1,
                child: Container(
                  color: Colors.red,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
              _wrapScrollTag(
                index: 2,
                child: Container(
                  color: Colors.purple,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
              _wrapScrollTag(
                index: 3,
                child: Container(
                  color: Colors.red,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
              _wrapScrollTag(
                index: 4,
                child: Container(
                  color: Colors.purple,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
            ],
          ),
        ),
        tablet: (BuildContext context) => SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              _wrapScrollTag(
                index: 0,
                child: LandingPage(),
              ),
              _wrapScrollTag(
                index: 1,
                child: Container(
                  color: Colors.red,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
              _wrapScrollTag(
                index: 2,
                child: Container(
                  color: Colors.purple,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
              _wrapScrollTag(
                index: 3,
                child: Container(
                  color: Colors.red,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
              _wrapScrollTag(
                index: 4,
                child: Container(
                  color: Colors.purple,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
            ],
          ),
        ),
        desktop: (BuildContext context) => SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              _wrapScrollTag(
                index: 0,
                child: LandingPage(),
              ),
              _wrapScrollTag(
                index: 1,
                child: Container(
                  color: Colors.red,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
              _wrapScrollTag(
                index: 2,
                child: Container(
                  color: Colors.purple,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
              _wrapScrollTag(
                index: 3,
                child: Container(
                  color: Colors.red,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
              _wrapScrollTag(
                index: 4,
                child: Container(
                  color: Colors.purple,
                  constraints: BoxConstraints(
                    minHeight: _size.height,
                    minWidth: _size.width,
                  ),
                ),
              ),
            ],
          ),
        ),
        watch: (BuildContext context) => Container(
          color: Theme.of(context).primaryColor,
          constraints: BoxConstraints(
            minHeight: _size.height,
            minWidth: _size.width,
          ),
          child: const Center(
            child: Text("Vihaan #5.0"),
          ),
        ),
      ),
    );
  }
}
