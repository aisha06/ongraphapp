import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BecomeSeller_view3.dart';
import 'cameraView.dart';
import 'imagesendView.dart';

class BecomeSellerview4 extends StatelessWidget {
  BecomeSellerview4({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: const Icon(Icons.clear),
        title: const Text("Become Seller"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
            margin: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "And last but not\nleast",
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                      "Boost your application!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                      "Attact a video of what you would sell first",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CameraApp()));
                  },
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.upload),
                          Text("Upload"),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                      "Anything else you'd like to tell us (Optional)",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // labelText: 'link to your profile on the platform ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),

                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Invalid link ';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            )),
      ),
      bottomNavigationBar: Row(
        children: [
          const SizedBox(
            width: 10.0,
          ),
          const Icon(
            Icons.arrow_back,
            size: 18.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Text(
            "Back",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ImagesendView()));
              },
              child: Text(
                "Send seller request ",
              ))
        ],
      ),
    );
  }
}
