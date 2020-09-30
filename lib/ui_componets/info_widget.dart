import 'package:flutter/material.dart';
import 'package:responsive_app/core/function/getDeviceType.dart';
import 'package:responsive_app/models/device_info.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInfo deviceInfo) builder;

  InfoWidget({this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        var mediaQueryData = MediaQuery.of(context);
        var deviceInfo = DeviceInfo(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenWidth: mediaQueryData.size.width,
          screenHeight: mediaQueryData.size.height,
          localWidth: constrains.maxWidth,
          localHeight: constrains.maxHeight,
        );
        return builder(context, deviceInfo);
      },
    );
  }
}
