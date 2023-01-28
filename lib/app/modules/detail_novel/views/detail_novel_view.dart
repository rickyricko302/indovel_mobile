import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indovel_mobile/app/data/themes.dart';
import 'package:indovel_mobile/app/widgets/item_komen.dart';
import 'package:indovel_mobile/app/widgets/item_novel.dart';
import 'package:indovel_mobile/app/widgets/item_promo.dart';

import '../controllers/detail_novel_controller.dart';

class DetailNovelView extends GetView<DetailNovelController> {
  const DetailNovelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Themes.hitam),
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark),
        actionsIconTheme: IconThemeData(color: Themes.hitam),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://rickyricko302.github.io/Indovel/assets/img/220px-Laskar_pelangi_sampul.jpg",
                  width: 160,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Laskar Pelangi",
                style: GoogleFonts.nunito(
                    color: Themes.hitam,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            Center(
              child: Text(
                "Boy Candra",
                style: GoogleFonts.nunito(color: Colors.blueGrey, fontSize: 16),
              ),
            ),
            Container(
              width: double.infinity,
              height: 12,
              margin: const EdgeInsets.only(top: 15),
              color: Color.fromARGB(255, 245, 244, 244),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"),
                    radius: 23,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gramedia Solo",
                          style: GoogleFonts.nunito(
                              color: Themes.hitam, fontSize: 18),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 12,
                            ),
                            Expanded(
                              child: Text(
                                "Surakarta, Jawa Tengah",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.nunito(
                                    color: Themes.hitam, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Chat Seller",
                        style: GoogleFonts.nunito(
                            fontSize: 12, color: Themes.merahPrimary),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 12,
              color: Color.fromARGB(255, 245, 244, 244),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                "Sinopsis",
                style: GoogleFonts.nunito(color: Themes.hitam, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Buku ini menceritakan tentang perjuangan Bu Muslimah dan Pak Harfan, dua orang guru yang memiliki dedikasi tinggi dalam dunia pendidikan, dimana dengan usaha dan kesungguhannya mereka berdua berhasil memajukan pendidikan di desa Gantong satu desa terpencil di pilau Balitong.",
                style: GoogleFonts.nunito(
                    color: Color.fromARGB(255, 146, 145, 145)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Review",
                    style:
                        GoogleFonts.nunito(color: Themes.hitam, fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Lihat semua",
                      style: GoogleFonts.nunito(
                          color: Themes.merahPrimary, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  RatingBar.builder(
                    ignoreGestures: true,
                    itemSize: 18,
                    initialRating: 4.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("4.5 / 5"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "(190 ulasan)",
                    style: GoogleFonts.nunito(color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return WidgetItemComment();
                }),
            Container(
              width: double.infinity,
              height: 12,
              margin: const EdgeInsets.only(top: 15),
              color: Color.fromARGB(255, 245, 244, 244),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Novel Terkait",
                style: GoogleFonts.nunito(color: Themes.hitam, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 250,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return WidgetItemNovel(
                    index: index,
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Themes.merahPrimary,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Rp 45.000",
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 22)),
            SizedBox(
              height: 45,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {},
                  child: Text(
                    "Beli Sekarang",
                    style: GoogleFonts.nunito(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
