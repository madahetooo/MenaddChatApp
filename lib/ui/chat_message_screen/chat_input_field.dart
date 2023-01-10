import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final messageController = TextEditingController();

  void initState() {
    super.initState();
    messageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 20,
            color: Colors.greenAccent.withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
                child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.sentiment_satisfied_alt_outlined,
                    color: Colors.grey[800],
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        hintText: "Type a message...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  messageController.text.isEmpty
                      ? IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.grey[800],
                          ),
                        )
                      : const SizedBox(),
                  messageController.text.isEmpty
                      ? IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_file_outlined,
                      color: Colors.grey[800],
                    ),
                  )
                      : const SizedBox(),
                  messageController.text.isEmpty
                      ? const SizedBox(
                          width: 5.0,
                        )
                      : const SizedBox(),
                  messageController.text.isNotEmpty
                      ? IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: Colors.green,
                          ))
                      : const SizedBox()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
