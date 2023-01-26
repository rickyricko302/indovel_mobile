import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indovel_mobile/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/keranjang/controllers/keranjang_controller.dart';

import '../../../../../data/themes.dart';

class KeranjangView extends GetView<KeranjangController> {
  const KeranjangView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            children: [
              Text(
                "Keranjang",
                style: GoogleFonts.nunito(
                    color: Themes.hitam,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 50,
                height: 3,
                decoration: BoxDecoration(
                    color: Themes.merahPrimary,
                    borderRadius: BorderRadius.circular(5)),
              )
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/images/no_cart.svg",
                width: 160,
                height: 160,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Keranjang masih kosong",
              style: GoogleFonts.nunito(
                  color: Themes.hitam,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Get.find<DashboardController>().changePage(0);
                  },
                  child: Text(
                    "Belanja Sekarang",
                    style: GoogleFonts.nunito(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ));
  }
}
