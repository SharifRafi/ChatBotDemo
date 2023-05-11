import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage(
      {super.key,
      required this.text,
      required this.sender,
      required this.time});

  final String text;
  final String sender;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    bool isUser = sender == 'user';
    final double radius = isUser ? 0 : 6;
    String formattedDate = DateFormat('h:mm a, dd/MM/yyyy').format(time);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isUser)
            const CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage('assets/images/ic_logo.png'),
            ),
          if (isUser)
            Expanded(
              child: Container(
                width: 50,
              ),
            ),
          Column(
            crossAxisAlignment:
                isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  formattedDate,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 10,
                  ),
                  textAlign: isUser ? TextAlign.right : TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  constraints: BoxConstraints(
                    minWidth: 30,
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(6),
                      topRight: const Radius.circular(6),
                      bottomLeft: isUser
                          ? const Radius.circular(6)
                          : const Radius.circular(0),
                      bottomRight: isUser
                          ? const Radius.circular(0)
                          : const Radius.circular(6),
                    ),
                  ),
                  child: Text(
                    text.trim(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    textAlign: isUser ? TextAlign.right : TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          if (!isUser)
            Expanded(
              child: Container(
                width: 30,
              ),
            ),
        ],
      ),
    );
  }
}
