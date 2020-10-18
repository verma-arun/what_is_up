import 'package:flutter/material.dart';
import 'package:what_is_up/src/model/chat_model.dart';
import 'package:what_is_up/src/widget/chat_item_widget.dart';

class RecentChatScreen extends StatefulWidget {
  RecentChatScreen({Key key}) : super(key: key);

  @override
  _RecentChatScreenState createState() => _RecentChatScreenState();
}

class _RecentChatScreenState extends State<RecentChatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return ChatItemWidget(chat: dummyData[index],);
        },
      ),
    );
  }
}
