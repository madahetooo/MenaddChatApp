
import 'package:flutter/material.dart';
import 'package:menaddchatapp/ui/chat_list_screen/chat_list.dart';

void main() =>  runApp(MaterialApp(

  initialRoute: '/chatlist',
  routes: {

    '/chatlist' : (context) =>ChatList(),


  },

));