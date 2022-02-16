import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web_2/constants/controller.dart';
import 'package:flutter_dashboard_web_2/helpers/responsiveness.dart';
import 'package:flutter_dashboard_web_2/pages/overview/widgets/available_drivers.dart';
import 'package:flutter_dashboard_web_2/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_dashboard_web_2/pages/overview/widgets/overview_cards_small.dart';
import 'package:flutter_dashboard_web_2/pages/overview/widgets/revenue_section_large.dart';
import 'package:flutter_dashboard_web_2/pages/overview/widgets/revenue_section_small.dart';
import 'package:flutter_dashboard_web_2/widgets/custom_text.dart';
import 'package:get/get.dart';

import 'widgets/overview_cards_large.dart';

class OverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            )),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomSize(context))
                OverViewMediumCardScreen()
              else
                OverviewCardsLargeScreen()
            else
              OverViewSmallScreen(),
            if (!ResponsiveWidget.isSmallScreen(context))
              RevenueSectionLarge()
            else
              RevenueSectionSmall(),
            AvailableDrivers()
          ],
        )),
      ],
    );
  }
}
