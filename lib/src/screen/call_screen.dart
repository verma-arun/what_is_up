import 'package:flutter/material.dart';
import 'package:what_is_up/src/model/call_model.dart';
import 'package:what_is_up/src/widget/call_item_widget.dart';

class CallScreen extends StatefulWidget {
  CallScreen({Key key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callDummyData.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: CallItemWidget(
              call: callDummyData[index],
            ),
          );
        },
      ),
    );
  }
}
