import 'package:flutter/material.dart';
import 'package:menaddchatapp/model/chat_message.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
    required this.index,
  }) : super(key: key);
  final ChatMessage message;
  final int index;

  @override
  Widget build(BuildContext context) {
    Widget messageContain(ChatMessage message, int index){
      switch (message.messageType){
        case ChatMessageType.text:
          return MessageText(message: message);
        case ChatMessageType.image:
          return MessageImage(message: message, index : index);
        default:
          return SizedBox();
      }
    }
    return const Placeholder();
  }
}
