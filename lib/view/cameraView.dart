// import 'dart:io';
//
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:ongraphapp/view/video.dart';
// import 'package:path_provider/path_provider.dart';
//
// /// CameraApp is the Main Application.
// class CameraApp extends StatefulWidget {
//   /// Default Constructor
//   const CameraApp({super.key});
//
//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }
//
// class _CameraAppState extends State<CameraApp> {
//   CameraController? _cameraController;
//   bool _isCameraReady = false;
//
//   @override
//   void initState() {
//     super.initState();
//
//     availableCameras().then((cameras) {
//       if (cameras.isNotEmpty && _cameraController == null) {
//         _cameraController = CameraController(
//           cameras.first,
//           ResolutionPreset.medium,
//         );
//
//         _cameraController!.initialize().then((_) {
//           setState(() {
//             _isCameraReady = true;
//           });
//         });
//       }
//     });
//   }
//
//   void _onTakePicture(BuildContext context) {
//     _cameraController!.takePicture().then((image) {
//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (context) =>
//               PhotoPreview(
//                 imagePath: image.path,
//               ),
//         ),
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(extendBody: true,
//         bottomNavigationBar: _buildBottomNavigationBar(),
//         backgroundColor: Theme
//             .of(context)
//             .colorScheme
//             .background,
//         appBar: AppBar(
//           leading: const Icon(Icons.clear),
//           // title: const Text("Become Seller"),
//         ),
//         body: Stack(children: [
//           CameraPreview(_cameraController!), Positioned(
//             top: 24.0,
//             left: 12.0,
//             child: IconButton(
//               icon: Icon(
//                 Icons.switch_camera,
//                 color: Colors.white,
//               ),
//               onPressed: () {},
//             ),
//           ),
//
//         ]));
//   }
//
//   Widget _buildBottomNavigationBar() {
//     return Container(
//       color: Theme
//           .of(context)
//           .bottomAppBarColor,
//       height: 100.0,
//       width: double.infinity,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           FutureBuilder(
//             // future: getLastImage(),
//             builder: (context, snapshot) {
//               if (snapshot.data == null) {
//                 return Container(
//                   width: 40.0,
//                   height: 40.0,
//                 );
//               }
//               return GestureDetector(
//                 onTap: () {},
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) => Gallery(),
//               // ),
//               //       ),
//                 child: Container(
//                   width: 40.0,
//                   height: 40.0,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(4.0),
//                     // child: Image.file(
//                     //   // snapshot.data,
//                     //   fit: BoxFit.cover,
//                     // ),
//                   ),
//                 ),
//               );
//             },
//           ),
//           CircleAvatar(
//             backgroundColor: Colors.white,
//             radius: 28.0,
//             child: IconButton(
//               // icon: Icon(
//               //   (_isRecordingMode)
//               //       ? (_isRecording) ? Icons.stop : Icons.videocam
//               //       : Icons.camera_alt,
//               //   size: 28.0,
//               //   color: (_isRecording) ? Colors.red : Colors.black,
//               // ),
//               onPressed: () {
//                 // if (!_isRecordingMode) {
//                 //   _captureImage();
//                 // } else {
//                 //   if (_isRecording) {
//                 //     stopVideoRecording();
//                 //   } else {
//                 //     startVideoRecording();
//                 //   }
//                 // }
//               },
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.camera_alt,
//               // (_isRecordingMode) ? Icons.camera_alt : Icons.videocam,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               setState(() {
//                 // _isRecordingMode = !_isRecordingMode;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _captureImage() async {
//     if (_cameraController.value.isInitialized) {
//       final Directory extDir = await getApplicationDocumentsDirectory();
//       final String dirPath = '${extDir.path}/media';
//       await Directory(dirPath).create(recursive: true);
//       final String filePath = '$dirPath/${_timestamp()}.jpeg';
//       await _cameraController?.takePicture(filePath);
//       setState(() {});
//     }
//   }
//
//   Future<String?> startVideoRecording() async {
//     print('startVideoRecording');
//     if (!_cameraController!.value.isInitialized) {
//       return null;
//     }
//     setState(() {
//       // _isRecording = true;
//     });
//     // _timerKey.currentState.startTimer();
//
//     final Directory extDir = await getApplicationDocumentsDirectory();
//     final String dirPath = '${extDir.path}/media';
//     await Directory(dirPath).create(recursive: true);
//      final String filePath = '$dirPath/${_timestamp()}.mp4';
//
//     if (_cameraController!.value.isRecordingVideo) {
//       // A recording is already started, do nothing.
//       return null;
//     }
//
//     try {
//       await _cameraController?.startVideoRecording(filePath);
//     } on CameraException catch (e) {
//       // _showCameraException(e);
//       return null;
//     }
//     return filePath;
//   }
//   Future<void> stopVideoRecording() async {
//     if (!_cameraController!.value.isRecordingVideo) {
//       return null;
//     }
//     _timerKey.currentState.stopTimer();
//     setState(() {
//       // _isRecording = false;
//     });
//
//     try {
//       await _cameraController?.stopVideoRecording();
//     } on CameraException catch (e) {
//       // _showCameraException(e);
//       return null;
//     }
//   }
//
// }
