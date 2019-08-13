import 'package:flutter/material.dart';
import 'ui/homePage.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  cameras = await availableCameras();
  runApp(
    HomePage(cameras),
  );
}
