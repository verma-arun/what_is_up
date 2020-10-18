import 'package:flutter/material.dart';
import 'package:what_is_up/src/model/chat_model.dart';

class ChatItemWidget extends StatelessWidget {

  final ChatModel chat;
  ChatItemWidget({Key key, @required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(chat.avatarUrl),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            chat.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            chat.time,
            style: TextStyle(color: Colors.grey, fontSize: 12.0),
          ),
        ],
      ),
      subtitle: Container(
        padding: const EdgeInsets.only(top: 5.0),
        child: Text(
          chat.message,
          style: TextStyle(color: Colors.grey, fontSize: 15.0),
        ),
      ),
    );
  }
}
