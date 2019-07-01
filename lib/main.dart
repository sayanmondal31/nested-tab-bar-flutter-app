import 'package:flutter/material.dart';
import 'package:nested_tab_bar/nestedTabBArView.dart';

void main() => runApp(NestedApp());

class NestedApp extends StatefulWidget {
  @override
  _NestedAppState createState() => _NestedAppState();
}

class _NestedAppState extends State<NestedApp> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: Text("nested tab bar"),
        ),
        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.teal,
            indicatorColor: Colors.teal,
            unselectedLabelColor: Colors.black54,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.email,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.phone,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            NestedTabBar(),
            Center(
              child: Text("email"),
            ),
            Center(
              child: Text("phone"),
            )
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
