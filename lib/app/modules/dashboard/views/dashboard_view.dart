import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:indovel_mobile/app/data/themes.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/favorit/views/favorit_view.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/home/views/home_view.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/keranjang/view/keranjang_view.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/profile/view/profile_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: const [
          HomeView(),
          FavoritView(),
          KeranjangView(),
          ProfileView()
        ],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.pageSelected.value,
              onTap: (page) {
                controller.changePage(page);
              },
              selectedItemColor: Themes.merahPrimary,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: "Favorit"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: "Keranjang"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profil"),
              ])),
    );
  }
}
