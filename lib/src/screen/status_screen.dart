// import 'package:flutter/material.dart';
//
// class StatusScreen extends StatefulWidget {
//   StatusScreen({Key key}) : super(key: key);
//
//   @override
//   _StatusScreenState createState() => _StatusScreenState();
// }
//
// class _StatusScreenState extends State<StatusScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'status screen',
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:what_is_up/src/model/chat_model.dart';
import 'package:what_is_up/src/widget/my_status_widget.dart';
import 'package:what_is_up/src/widget/viewed_status_widget.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MyStatusWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dummyData.length,
              itemBuilder: (BuildContext context, int i) {
                return OthersStatusWidget(status: dummyData[i],);
              },
            ),
          )
        ],
      ),
    );
  }
}

