import 'package:flutter/material.dart';
import 'package:menaddchatapp/ui/chat_message_screen/message_body.dart';

class ChatMessageScreen extends StatefulWidget {
  const ChatMessageScreen({Key? key}) : super(key: key);

  @override
  State<ChatMessageScreen> createState() => _ChatMessageScreenState();
}

class _ChatMessageScreenState extends State<ChatMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MessageBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        "Friendly Chat",
        style: TextStyle(fontSize: 16.0),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.local_phone),
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.videocam),
        ),
        IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.logout),
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}
