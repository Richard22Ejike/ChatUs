
import 'package:chatus/widgets/sender.message.card.dart';
import 'package:flutter/material.dart';
import 'package:chatus/info.dart';

import 'my.message.card.dart';




class ChatList extends StatelessWidget {
  const ChatList({Key? key, required bool isGroupChat, required String recieverUserId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCards(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCards(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}