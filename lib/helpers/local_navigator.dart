import 'package:flutter/widgets.dart';
import 'package:flutter_dashboard_web_2/constants/controller.dart';
import 'package:flutter_dashboard_web_2/routing/router.dart';
import 'package:flutter_dashboard_web_2/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
