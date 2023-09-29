import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';

/// Camera
List<CameraDescription> cameras = <CameraDescription>[];

/// Initialise Camera
Future<void> initialiseCamera() async {
  if (kDebugMode) {
    print('Camera is initialize');
  }
  cameras = await availableCameras();
}