import 'package:flutter/material.dart';

import 'info_cards.dart';

class OverViewMediumCardScreen extends StatelessWidget {
  const OverViewMediumCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: 'Flutter web in progress',
              value: '7',
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: 'Packages delivered',
              value: '17',
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            InfoCard(
              title: 'Cancelled delivery',
              value: '3',
              onTap: () {},
              topColor: Colors.redAccent,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: 'Scheduled deliveries',
              value: '3',
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
