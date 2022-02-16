import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web_2/helpers/local_navigator.dart';
import 'package:flutter_dashboard_web_2/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // navigation
        Expanded(child: SideMenu()),
        // content
        Expanded(
            flex: 5,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: localNavigator()))
      ],
    );
  }
}