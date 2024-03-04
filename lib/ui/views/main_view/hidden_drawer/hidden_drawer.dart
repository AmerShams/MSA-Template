import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:msa/ui/views/main_view/Home_view.dart/Home_view.dart';
import 'package:msa/ui/views/main_view/Setting_page/Setting_Page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _Pages = [];
  final Mytextstyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white);
  @override
  void initState() {
    super.initState();
    _Pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            colorLineSelected: Colors.deepPurple,
            name: "HomePage",
            baseStyle: Mytextstyle,
            selectedStyle: Mytextstyle),
        Home_view(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            colorLineSelected: Colors.deepPurple,
            name: "Settings",
            baseStyle: Mytextstyle,
            selectedStyle: Mytextstyle),
        Setting_Page(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple.shade200,
      screens: _Pages,
      initPositionSelected: 0,
      elevationAppBar: 4,
      backgroundColorAppBar: Colors.deepPurple,
      slidePercent: 40,
    );
  }
}
