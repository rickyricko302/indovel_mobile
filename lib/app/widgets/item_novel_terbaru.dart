import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/themes.dart';

class WidgetItemNovelTerbaru extends StatelessWidget {
  const WidgetItemNovelTerbaru({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 10),
      child: SizedBox(
        height: 198,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 2,
          child: InkWell(
            onTap: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    "https://rickyricko302.github.io/Indovel/assets/img/220px-Laskar_pelangi_sampul.jpg",
                    width: 110,
                    height: 198,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Boy Candra",
                              style: GoogleFonts.nunito(color: Colors.blueGrey),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.favorite_border,
                                size: 20,
                                color: Colors.blueGrey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Text(
                          "Sebuah Seni untuk Melupakan",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.nunito(
                              color: Themes.hitam, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 6, top: 5, right: 8),
                        child: Row(
                          children: [
                            RatingBar.builder(
                              ignoreGestures: true,
                              itemSize: 20,
                              initialRating: 4.8,
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
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "4.8",
                              style: GoogleFonts.nunito(
                                  color: Themes.hitam,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text("(203)")
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Text(
                          "Rp 50.000",
                          style: GoogleFonts.nunito(
                              color: Colors.orange, fontSize: 20),
                        ),
                      ),
                      const Expanded(
                          child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Chip(label: Text("Romansa")),
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
