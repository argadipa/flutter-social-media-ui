import 'package:flutter/material.dart';
import 'package:flutter_social_ui/constants.dart';
import 'package:flutter_social_ui/widgets/custom_drawer.dart';
import 'package:flutter_social_ui/widgets/following_users.dart';
import 'package:flutter_social_ui/widgets/posts_carousel.dart';

import '../data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );
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
        drawer: CustomDrawer(),
        body: _tabController.index == 0
            ? ListView(
                children: <Widget>[
                  FollowingUsers(),
                  PostsCarousel(
                    pageController: _pageController,
                    title: 'Posts',
                    posts: posts,
                  ),
                ],
              )
            : Center(
                child: Text('Not implemented yet'),
              ),
      ),
    );
  }
}
