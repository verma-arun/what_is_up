import 'package:flutter/material.dart';

class MyStatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"),
              ),
              Positioned(
                bottom: 0.0,
                right: 1.0,
                child: Container(
                  height: 20,
                  width: 20,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
          title: Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Tap to add status update"),
        ),
      ),
    );
  }

}