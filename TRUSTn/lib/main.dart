import 'package:flutter/material.dart';
import 'package:trustn_dev/src/features/report/reportView.dart';

// void main() => runApp(myApp());
void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: ReportView(),
    );
  }
}
