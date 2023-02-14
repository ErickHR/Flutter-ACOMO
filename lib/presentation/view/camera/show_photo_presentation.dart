import 'package:flutter/material.dart';
import 'dart:io';

class ShowPhotoPresentation extends StatelessWidget {
  final String imagePath;
  const ShowPhotoPresentation({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    // final dynamic imagePath = ModalRoute.of(context)?.settings.arguments;
    return Center(
      child: Image.file(
        File(
          imagePath,
        ),
      ),
    );
  }
}
