import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indovel_mobile/app/data/themes.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/favorit/controllers/favorit_controller.dart';

class FavoritView extends GetView<FavoritController> {
  const FavoritView({Key? key}) : super(key: key);
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
                "Favorit",
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
                "assets/images/no_favorit.svg",
                width: 160,
                height: 160,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Tidak ada novel favorit",
              style: GoogleFonts.nunito(
                  color: Themes.hitam,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Anda belum menyimpan novel apapun.",
              style: GoogleFonts.nunito(color: Colors.blueGrey, fontSize: 16),
            ),
          ],
        ));
  }
}
