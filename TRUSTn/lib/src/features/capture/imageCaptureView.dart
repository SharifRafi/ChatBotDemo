import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageCaptureView extends StatefulWidget {
  const ImageCaptureView({Key? key}) : super(key: key);

  @override
  State<ImageCaptureView> createState() => _ImageCaptureViewState();
}

class _ImageCaptureViewState extends State<ImageCaptureView> {
  late File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickerImage = await picker.getImage(source: ImageSource.camera);
    // await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      if (pickerImage != null) {
        _image = File(pickerImage.path);
      } else {
        print('No image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2.0),
              blurRadius: 15.0,
            )
          ]),
          child: AppBar(
            elevation: 0.0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: ImageIcon(
                AssetImage('assets/images/ic_back.png'),
                size: 40,
              ),
            ),
            leadingWidth: 70,
            title: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'TRUST',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      'n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            titleSpacing: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  width: 26,
                  child: Image.asset(
                    'assets/images/ic_logo.png',
                  ),
                ),
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/images/ic_camBG.png'),
              fit: BoxFit.fill,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Column(
                  children: const [
                    Text(
                      'Capture & Report',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        // child: _image = null ? Text('No Image') : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImage();
        },
        child: const Icon(
          Icons.camera,
          size: 40,
        ),
      ),
    );
  }
}
