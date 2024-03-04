import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msa/ui/views/main_view/hidden_drawer/hidden_drawer.dart';
import 'package:msa/ui/views/main_view/main_controller.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      // bottomNavigationBar: CustomBottmNavigation(
      //   onTap: (selectedView, index) {
      //     controller.selecte.value = selectedView;

      //     controller.pageController.jumpToPage(index);

      //     //! here notify onTap in navitem
      //   },
      //   selectedView: controller.selecte.value,
      // ),
      body: HiddenDrawer(),

// PageView(
//               physics: NeverScrollableScrollPhysics(),
//               controller: controller.pageController,
//               children: [
//                 Home_view(),
//                 NotificationView(),
//                 MoreView(),
//               ],
//             ),
    ));
  }
}
