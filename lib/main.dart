
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: BottomTabbarExample(),
      debugShowCheckedModeBanner: false,
    ) ;
  }
}

class BottomTabbarExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomTabbarExampleState();
}
class _BottomTabbarExampleState extends State<BottomTabbarExample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  static const _kTabPages = <Widget>[
    Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.purple)),
    Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.black)),
    Center(child: Icon(Icons.forum, size: 64.0, color: Colors.black)),
     Center(child: Icon(Icons.forum, size: 64.0, color: Colors.black)),
  ];
  static const _kTabs = <Tab>[
    Tab(icon: Icon(Icons.settings, color: Colors.black,), text: 'Tab1'),
    Tab(icon: Icon(Icons.airline_seat_individual_suite, color: Colors.black,), text: 'Tab2'),
    Tab(icon: Icon(Icons.forum, color: Colors.black,), text: 'Tab3'),
    Tab(icon: Icon(Icons.more_horiz, color: Colors.black,), text: 'Tab4'),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _kTabPages.length,
      vsync: this,
    );
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: TabBarView(
        children: _kTabPages,
        controller: _tabController,
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }
}