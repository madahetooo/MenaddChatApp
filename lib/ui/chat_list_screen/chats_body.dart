import 'package:flutter/material.dart';
import 'package:menaddchatapp/ui/chat_list_screen/chats_card.dart';
import 'package:menaddchatapp/ui/chat_list_screen/filled_outline_button.dart';
import 'package:menaddchatapp/ui/chat_message_screen/chat_message_screen.dart';

import '../../model/chats.dart';

class ChatsBody extends StatefulWidget {
  const ChatsBody({Key? key}) : super(key: key);

  @override
  State<ChatsBody> createState() => _ChatsBodyState();
}

class _ChatsBodyState extends State<ChatsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            color: Colors.green,
            child: Row(
              children: [
                FilledOutlineButton(
                  text: "Recent Messages",
                  press: () {},
                  isFilled: true,
                ),
                SizedBox(width: 20.0,),
                FilledOutlineButton(
                  text: "Active",
                  press: () {},
                  isFilled: false,
                ),
              ],
            ),
          ),
          Expanded(child: ListView.builder(
            itemCount: listOfChats.length,
              itemBuilder: (context, index) =>
                  ChatsCard(
                    chat: listOfChats[index],press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatMessageScreen()));
                  },

                  )
          ))
        ],
      ),
    );
  }
}
