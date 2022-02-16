import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web_2/pages/overview/widgets/info_cards_small.dart';

class OverViewSmallScreen extends StatelessWidget {
  const OverViewSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Flutter web in progress',
            value: '7',
            onTap: () {},
            topColor: Colors.orange,
            isActive: true,
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: 'Packages delivered',
            value: '17',
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: 'Cancelled delivery',
            value: '3',
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: '3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
