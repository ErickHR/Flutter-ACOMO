import 'package:app_acomo/utils/navigator_utils.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'package:app_acomo/domain/camera/camera_domain.dart';

import 'package:app_acomo/presentation/view/camera/show_photo_presentation.dart';

import 'package:app_acomo/presentation/component/appbar/back_appbar_component.dart';
import 'package:app_acomo/presentation/component/bottomNavigator/bottom_navigator_camera_component.dart';

import 'package:app_acomo/utils/color_utils.dart';
import 'package:app_acomo/utils/icons_utils.dart';
import 'package:app_acomo/utils/style_utils.dart';

//Trabajar con streamBuilder

class CameraPresentation extends StatefulWidget {
  const CameraPresentation({super.key});

  @override
  State<CameraPresentation> createState() => _CameraPresentationState();
}

class _CameraPresentationState extends State<CameraPresentation> {
  bool existImages = false;
  String imagePath = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
      appBar: const BackAppBarComponent(),
      body: SafeArea(
        child: existImagesWidget(existImages, imagePath: imagePath),
      ),
      bottomNavigationBar: bottomNavigator(existImages),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: !existImages,
        child: FloatingActionButton(
          backgroundColor: black,
          onPressed: () {
            CameraDomain.cameraController.takePicture().then((XFile? image) {
              if (image == null) {
                existImages = false;
              } else {
                imagePath = image.path;
                existImages = true;
              }
              setState(() {});
            });
          },
          child: Icon(
            iconUtils['camera'],
            size: spacing * 2,
          ),
        ),
      ),
    );
  }

  Widget bottomNavigator(bool existImages) {
    if (existImages) {
      return bottomNavigatorShowCamera();
    }
    return BottomNavigatorCameraComponent(setStateWidgetParent: setState);
  }

  Widget existImagesWidget(bool existImages, {required String imagePath}) {
    if (existImages == true) return ShowPhotoPresentation(imagePath: imagePath);
    return cameraWidget();
  }

  FutureBuilder<dynamic> cameraWidget() {
    return FutureBuilder(
      future: CameraDomain.isInitializeCamera(),
      builder: (context, snapshot) {
        try {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(CameraDomain.cameraController);
            // return SizedBox(
            //   width: width,
            //   height: (height - 50.0),
            //   child: CameraPreview(CameraDomain.cameraController),
            // );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        } catch (e) {
          return const Center(
            child: Text('Hubo problemas al abrir la camara'),
          );
        }
      },
    );
  }

  BottomNavigationBar bottomNavigatorShowCamera() {
    return BottomNavigationBar(
      // elevation: spacing,
      items: [
        bottomNavigatorBarItem(
          name: 'error',
          onPressed: actionError,
        ),
        bottomNavigatorBarItem(
          name: 'done',
          onPressed: actionDone(
            context,
            routeArguments: {
              'path_image': imagePath,
            },
          ),
        ),
      ],
      currentIndex: 0,
      selectedItemColor: black,
      onTap: (index) {},
    );
  }

  BottomNavigationBarItem bottomNavigatorBarItem({
    required String name,
    required onPressed,
    String label = '',
  }) {
    return BottomNavigationBarItem(
      icon: IconButton(
        color: black,
        icon: Icon(
          iconUtils[name],
          color: black,
        ),
        onPressed: onPressed,
      ),
      label: label,
    );
  }

  actionDone(
    BuildContext context, {
    required Map<String, dynamic> routeArguments,
  }) {
    return NavigatorUtils.pop(context);
  }

  actionError() {
    existImages = false;
    setState(() {});
    // return NavigatorUtils.pop(context);
  }
}
