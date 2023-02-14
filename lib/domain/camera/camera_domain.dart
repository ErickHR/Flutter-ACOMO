import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraDomain {
  static List<CameraDescription> cameras = [];
  static Future? initializeCameraController;
  static late CameraController cameraController;
  static int positionCamera = 0;

  static Future<dynamic> initializeCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    CameraDomain.cameras = await availableCameras();

    CameraDomain.cameraController = CameraController(
      cameras.first,
      ResolutionPreset.ultraHigh,
    );

    CameraDomain.initializeCameraController = cameraController.initialize();

    return CameraDomain.initializeCameraController;
  }

  static Future<dynamic> isInitializeCamera() async =>
      CameraDomain.initializeCameraController ??
      CameraDomain.initializeCamera();

  static void changeCamera(setState) {
    CameraDomain.positionCameraFunction();
    CameraDomain.cameraController.dispose().then((value) {
      setState(() {});
      CameraDomain.cameraController = CameraController(
        CameraDomain.cameras[CameraDomain.positionCamera],
        ResolutionPreset.ultraHigh,
      );
      CameraDomain.initializeCameraController = cameraController.initialize();
      setState(() {});

      CameraDomain.initializeCameraController?.then((value) {
        setState(() {});
      });
    });
  }

  static void positionCameraFunction() {
    if (CameraDomain.positionCamera == 0) {
      CameraDomain.positionCamera = 1;
      return;
    }
    CameraDomain.positionCamera = 0;
  }
}
