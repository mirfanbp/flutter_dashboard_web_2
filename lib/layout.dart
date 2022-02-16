import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web_2/helpers/responsiveness.dart';
import 'package:flutter_dashboard_web_2/widgets/large_screen.dart';
import 'package:flutter_dashboard_web_2/widgets/side_menu.dart';
import 'package:flutter_dashboard_web_2/widgets/small_screen.dart';
import 'package:flutter_dashboard_web_2/widgets/top_nav.dart';

import 'helpers/local_navigator.dart';

class SiteLayout extends StatelessWidget {
  //const SiteLayout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldIdKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldIdKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldIdKey),
      drawer: Drawer(child: SideMenu()),
      body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          )),
    );
  }
}
