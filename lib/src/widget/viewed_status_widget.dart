import 'package:flutter/material.dart';
import 'package:what_is_up/src/model/chat_model.dart';

class OthersStatusWidget extends StatelessWidget {

  final ChatModel status;
  OthersStatusWidget({Key key, @required this.status}) : super(key: key);

  _viewStatus() {
    print('tapped on status');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(status.avatarUrl),
          ),
          title: Text(
            status.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(status.time),
          onTap: () => _viewStatus()
      ),
    );
  }

}