import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/utils.dart';

class Videoview extends StatefulWidget {
  Videoview({super.key});

  @override
  State<Videoview> createState() => _VideoviewState();
}

class _VideoviewState extends State<Videoview> {
  File? galleryFile;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.clear),
      ), body: Builder(
      builder: (BuildContext context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: const Text('Select video from Gallery and Camera'),
                onPressed: () {
                  _showPicker(context: context);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200.0,
                width: 300.0,
                child: galleryFile == null
                    ? const Center(child: Text('Sorry nothing selected!!'))
                    : Center(child: Text(galleryFile!.path)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: Text(
                  "GFG",
                  textScaleFactor: 3,
                  style: TextStyle(color: Colors.green),
                ),
              )
            ],
          ),
        );
      },
    ),

    );
  }

  Future getVideo(ImageSource img,) async {
    final pickedFile = await picker.pickVideo(
        source: img,
        preferredCameraDevice: CameraDevice.front,
        maxDuration: const Duration(minutes: 10));
    XFile? xfilePick = pickedFile;
    setState(
          () {
        if (xfilePick != null) {
          galleryFile = File(pickedFile!.path);
        } else {
          ScaffoldMessenger.of(context).showSnackBar( // is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () {
                  getVideo(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getVideo(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
