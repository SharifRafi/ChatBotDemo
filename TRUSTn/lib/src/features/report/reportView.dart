import 'package:flutter/material.dart';
import 'package:trustn_dev/src/features/chatBot/chatScreen.dart';
import 'package:trustn_dev/src/features/fileUpload/audioUploadView.dart';
import 'package:trustn_dev/src/features/fileUpload/pictureUploadView.dart';
import 'package:trustn_dev/src/features/fileUpload/videoUploadView.dart';

class ReportView extends StatelessWidget {
  const ReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ic_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage('assets/images/ic_logo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TRUST',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 3,
                      ),
                    ),
                    Text(
                      'n',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 16),
                child: Container(
                  height: 2,
                  width: 50,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Intelligent Chatbot',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Suspecious Activity Reporting',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PictureUploadView(),
                          ),
                        );
                      },
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.camera_alt,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Report with Picture',
                                style: TextStyle(color: Colors.black),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AudioUploadView(),
                          ),
                        );
                      },
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.mic_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Report with Audio',
                                style: TextStyle(color: Colors.black),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VideoUploadView(),
                          ),
                        );
                      },
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                          child: Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage(
                                    'assets/images/ic_videoCamera.png'),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Report with Video',
                                style: TextStyle(color: Colors.black),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatScreenView(),
                          ),
                        );
                      },
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                          child: Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/images/ic_chat.png'),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Report with Chatbot',
                                style: TextStyle(color: Colors.black),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Card(
                    //   color: Colors.white,
                    //   child: ListTile(
                    //     leading: Icon(
                    //       Icons.chat,
                    //       color: Colors.black,
                    //     ),
                    //     title: Text(
                    //       'Report with Chatbot',
                    //       style: TextStyle(color: Colors.black),
                    //     ),
                    //     trailing: Icon(
                    //       Icons.arrow_forward,
                    //       size: 16,
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
