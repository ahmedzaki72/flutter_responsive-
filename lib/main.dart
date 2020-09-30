import 'package:flutter/material.dart';
/// using this to give me different screen you testing .
import 'package:device_preview/device_preview.dart';
import 'package:responsive_app/ui_componets/info_widget.dart';

void main() {
  runApp(
    DevicePreview(builder: (context) => MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// I will get to screen width and screen height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight  = MediaQuery.of(context).size.height;
    return MaterialApp(

      builder: DevicePreview.appBuilder,
      home: Scaffold(
        body: Container(
          width: screenWidth,
          color: Colors.black,
          child: InfoWidget(
            builder: (context, deviceInfo ) {
              print(deviceInfo.localHeight);
              print(deviceInfo.localWidth);
               return Center(
                 child: Container(
                   width: deviceInfo.localWidth / 2,
                   height: deviceInfo.localHeight /2 ,
                   color: Colors.red,
                 ),
               );
            },
          ),
        ),
      ),
    );
  }
}

