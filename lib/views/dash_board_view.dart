import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    print('width ${MediaQuery.sizeOf(context).width}');
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Color(0XFFFAFAFA),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashBoardDesktopLayout(),
      ),
    );
  }
}
