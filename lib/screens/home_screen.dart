import 'package:flutter/material.dart';
import 'package:flutter_social_ui/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            'STREAM',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 10.0,
            ),
          ),
          bottom: TabBar(
            controller: _tabController,
            labelColor: Theme.of(context).primaryColor,
            labelStyle: kTabTextStyle,
            unselectedLabelStyle: TextStyle(
              fontSize: 18.0,
            ),
            indicatorWeight: 3.0,
            tabs: <Widget>[
              Tab(
                text: 'Trending',
              ),
              Tab(
                text: 'Latest',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
