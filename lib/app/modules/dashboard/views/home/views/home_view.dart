import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indovel_mobile/app/data/themes.dart';
import 'package:indovel_mobile/app/widgets/item_novel_terbaru.dart';
import 'package:indovel_mobile/app/widgets/item_promo.dart';

import '../../../../../widgets/item_top_author.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ScrollConfiguration(
          behavior: ScrollBehavior()..copyWith(overscroll: false),
          child: CustomScrollView(
            controller: controller.scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Indovel",
                                  style: GoogleFonts.nunito(
                                      color: Themes.merahPrimary, fontSize: 25),
                                ),
                                Text(
                                  "Temukan jutaan judul novel yang Anda minati.",
                                  style: GoogleFonts.nunito(
                                      color: Colors.blueGrey),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"),
                            radius: 23,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverAppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                pinned: true,
                flexibleSpace: Obx(() => AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      margin: controller.isToolbarPinned.value
                          ? EdgeInsets.zero
                          : const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          borderRadius: controller.isToolbarPinned.value
                              ? BorderRadius.zero
                              : BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 2),
                          ]),
                      child: TextField(
                        style: GoogleFonts.nunito(),
                        decoration: InputDecoration(
                            hintText: "Cari buku novel yang anda minati",
                            hintStyle: GoogleFonts.nunito(color: Colors.grey),
                            prefixIcon: const Icon(Icons.search),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 6),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    )),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 10, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Baru Promo",
                            style: GoogleFonts.nunito(
                                fontSize: 20,
                                color: Themes.hitam,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lihat Semua",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
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
                          return WidgetItemPromo(
                            index: index,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 10, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Author",
                            style: GoogleFonts.nunito(
                                fontSize: 20,
                                color: Themes.hitam,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lihat Semua",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 15,
                          );
                        },
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return WidgetItemTopAuthor(
                            index: index,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 15, right: 20),
                      child: Text(
                        "Novel Terbaru",
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            color: Themes.hitam,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return const WidgetItemNovelTerbaru();
                        })
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
