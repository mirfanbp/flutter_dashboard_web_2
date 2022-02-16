import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web_2/constants/controller.dart';
import 'package:flutter_dashboard_web_2/helpers/responsiveness.dart';
import 'package:flutter_dashboard_web_2/pages/clients/widgets/clients_table.dart';
import 'package:flutter_dashboard_web_2/widgets/custom_text.dart';
import 'package:get/get.dart';

class ClientsPage extends StatelessWidget {
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
          children: [ClientTable()],
        )),
      ],
    );
  }
}
