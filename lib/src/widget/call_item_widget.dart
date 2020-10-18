import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:what_is_up/src/model/call_model.dart';

class CallItemWidget extends StatelessWidget {
  final CallModel call;
  CallItemWidget({Key key, @required this.call}) : super(key: key);

  Widget _callHistoryIcon() {
    switch (call.callDetail[0].isIncoming) {
      case true:
        return Icon(Icons.south_west,
            size: 20,
            color: call.callDetail[0].isMissed ? Colors.red : Colors.grey);
      default:
        return Icon(
          Icons.north_east,
          size: 20,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(call.avatarUrl),
            ),
            title: Text(
              call.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                _callHistoryIcon(),
                Text(DateFormat.yMMMd().format(call.lastCall.timestamp)),
              ],
            ),
            trailing:
                Icon(call.callType == 'audio' ? Icons.call : Icons.video_call),
            onTap: () {}));
  }
}
