import 'package:flutter/material.dart';
import 'package:what_is_up/src/helpers/text_helpers.dart';
import 'package:what_is_up/src/model/call_model.dart';

class CallDetailsWidget extends StatelessWidget {
  final CallModel call;
  final String searchKeyword;
  final Function onProfileTap;
  final Function onTap;
  final Function onLeadingTap;

  CallDetailsWidget({
    this.call,
    this.searchKeyword,
    this.onProfileTap,
    this.onTap,
    this.onLeadingTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GestureDetector(
        onTap: () {
          onProfileTap();
        },
        child: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(call.avatarUrl),
        ),
      ),
      title: searchKeyword == null || searchKeyword.isEmpty
          ? Text(
              call.name,
              maxLines: 1,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            )
          : TextHelpers.getHighlightedText(
              call.name,
              searchKeyword,
              TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              )),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          call.lastCall.isIncoming
              ? Icon(
                  Icons.call_received,
                  color: call.lastCall.isMissed ? Colors.red : Colors.green,
                  size: 16.0,
                )
              : Icon(
                  Icons.call_made,
                  color: call.lastCall.isMissed ? Colors.red : Colors.green,
                  size: 16.0,
                ),
          call.callDetail.length > 1
              ? Text(
                  '(${call.callDetail.length})',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                )
              : Container(),
          Text(
            call.lastCall.timestamp,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      trailing: IconButton(
          icon: Icon(
            Icons.call,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: onLeadingTap),
      onTap: onTap,
    );
  }
}
