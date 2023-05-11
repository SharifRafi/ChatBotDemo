import 'package:flutter/material.dart';

class PictureUploadView extends StatelessWidget {
  const PictureUploadView({Key? key}) : super(key: key);

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
      backgroundColor: Colors.teal,
      body: Container(
        decoration: const BoxDecoration(
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
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Capture a Picture',
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
                    SizedBox(height: 16),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.image,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Choose picture from Gallery',
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
