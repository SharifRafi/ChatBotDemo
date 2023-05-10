import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.text, required this.sender});

  final String text;
  final String sender;

  @override
  Widget build(BuildContext context) {
    bool isUser = sender == 'user';

    // return Scaffold(
    //   body: Container(
    //     margin: EdgeInsets.only(top: 8),
    //     child: Row(
    //       mainAxisAlignment:
    //           isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         if (!isUser)
    //           CircleAvatar(
    //             radius: 16,
    //             backgroundImage: AssetImage('assets/images/ic_logo'),
    //           ),
    //         SizedBox(
    //           width: 16,
    //         ),
    //         Container(
    //           padding: EdgeInsets.all(8),
    //           constraints: BoxConstraints(
    //               maxWidth: MediaQuery.of(context).size.width * 0.6),
    //           color: Colors.white38,
    //           child: Text(text),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        // isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isUser)
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/ic_logo.png'),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                padding: EdgeInsets.all(8),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6),
                color: Colors.black12,
                child: Text(
                  text.trim(),
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: isUser ? TextAlign.right : TextAlign.left,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// .trim().text.bodyText1(context).make().px8()
