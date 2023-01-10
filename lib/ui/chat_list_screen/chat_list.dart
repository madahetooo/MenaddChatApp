import 'package:flutter/material.dart';
import 'package:menaddchatapp/ui/chat_list_screen/chats_body.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  int _selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ChatsBody(),
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        child:Icon(Icons.group_add),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Chats",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        )
      ],
    );
  }
  BottomNavigationBar buildBottomNavigationBar(){
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
        setState((){
          _selectedIndex = index ;
        });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),label: "Call"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),label: "Settings"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage("assets/user.png"),
              ),label: "Profile"),
        ]);
  }
}
