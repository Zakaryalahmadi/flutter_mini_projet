import 'package:flutter/material.dart';

import 'views/desktop_view.dart';
import 'views/mobile_view.dart';
import 'views/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        desktopView: const DesktopView(),
        mobileView: MobileView(),
      ),
    );
  }
}
