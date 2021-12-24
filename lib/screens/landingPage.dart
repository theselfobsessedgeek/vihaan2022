import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:vihaan2022/meta/images.dart';

import '../constants.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var _deviceType = getDeviceType(_size);
    return Container(
      color: Theme.of(context).primaryColor,
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
      child: Row(
        children: [
          Visibility(
            visible: (_deviceType == DeviceScreenType.desktop),
            child: Expanded(child: Image.network(vihaanImage)),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(vihaanImage),
                  Container(
                    child: Column(
                      children: [
                        Text("Vihaan Quote Goes Here!"),
                        Text("Vihaan Dates Goes Here!"),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Register Now")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Join Discord")),
                            ),
                          ],
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
    );
  }
}
