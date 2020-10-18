import 'package:flutter/material.dart';
import 'package:what_is_up/src/screen/call_screen.dart';
import 'package:what_is_up/src/screen/camera_screen.dart';
import 'package:what_is_up/src/screen/recent_chat_screen.dart';
import 'package:what_is_up/src/screen/status_screen.dart';

class Home extends StatefulWidget {
  // final CameraDescription camera;
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  WhyFarther selection;
  TabController _tabController;
  int selectedIndex = 0;

  final List<Widget> _tabsHead = [
    Tab(
      icon: Icon(Icons.camera),
    ),
    Tab(
      text: 'CHAT',
    ),
    Tab(
      text: 'STATUS',
    ),
    Tab(
      text: 'CALLS',
    ),
  ];

  final List<Widget> _tabsBody = [
    CameraScreen(),
    RecentChatScreen(),
    StatusScreen(),
    CallScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabsHead.length);
    _tabController.addListener(() {
      setState(() {
        selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _floatingButton() {
    switch (_tabController.index) {
      case 1:
        {
          return FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.chat),
          );
        }
        break;

      case 2:
        {
          return FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.camera_alt),
          );
        }
        break;

      case 3:
        {
          return FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.call),
          );
        }
        break;

      default:
        {
          return FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.chat),
          );
        }
        break;
    }
  }

  Widget _popUpMenuButton() {
    return PopupMenuButton<WhyFarther>(
      onSelected: (WhyFarther result) {
        setState(() {
          selection = result;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.group,
          child: Text('group'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.broadcast,
          child: Text('broadcast'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.web,
          child: Text('WhatsIsUp Web'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.settings,
          child: Text('Settings'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabsHead.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            actions: [_popUpMenuButton()],
            bottom: TabBar(
              controller: _tabController,
              tabs: _tabsHead,
            ),
          ),
          body: TabBarView(controller: _tabController, children: _tabsBody),
          floatingActionButton: _floatingButton(),
        ));
  }
}

// This is the type used by the popup menu below.
enum WhyFarther { group, broadcast, web, settings }
