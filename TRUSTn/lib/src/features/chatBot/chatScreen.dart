import 'package:flutter/material.dart';
import 'package:trustn_dev/src/features/chatBot/chatMessage.dart';

class ChatScreenView extends StatefulWidget {
  const ChatScreenView({Key? key}) : super(key: key);

  @override
  State<ChatScreenView> createState() => _ChatScreenViewState();
}

class _ChatScreenViewState extends State<ChatScreenView> {
  final TextEditingController _textFieldController = TextEditingController();
  final List<ChatMessage> _messages = [];
  bool _isSender = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _sendMessage() {
    setState(() {
      _isSender = !_isSender;
      ChatMessage currentMessage = ChatMessage(
        text: _textFieldController.text,
        sender: _isSender ? 'user' : 'bot',
      );

      _messages.insert(0, currentMessage);
      _textFieldController.clear();
    });
  }

  Widget _buildTextComposer() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 8, 4),
      child: Row(
        children: [
          Container(
            child: Expanded(
              child: TextField(
                controller: _textFieldController,
                onSubmitted: (value) => _sendMessage(),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black12),
                  ),
                  hintText: 'Type your message',
                  hintStyle: TextStyle(color: Colors.black12),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            color: const Color.fromRGBO(54, 202, 205, 1),
            child: IconButton(
              onPressed: () {
                _sendMessage();
              },
              icon: const ImageIcon(
                AssetImage('assets/images/ic_send.png'),
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                reverse: true,
                padding: EdgeInsetsDirectional.all(8),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _messages[index];
                },
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75)),
                ],
              ),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(8),
                    //   color: Colors.white54,
                    //   border: Border.all(
                    //     color: Colors.black12,
                    //     style: BorderStyle.solid,
                    //     width: 1,
                    //   ),
                    // ),
                    child: _buildTextComposer(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
