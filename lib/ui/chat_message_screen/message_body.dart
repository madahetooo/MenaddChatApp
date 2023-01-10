import 'package:flutter/material.dart';
import 'package:menaddchatapp/ui/chat_message_screen/chat_input_field.dart';
class MessageBody extends StatefulWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  State<MessageBody> createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("This is Body"),
        ChatInputField(),
      ],
    );
  }
}
