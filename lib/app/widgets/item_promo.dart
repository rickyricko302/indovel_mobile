import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/themes.dart';

class WidgetItemPromo extends StatelessWidget {
  WidgetItemPromo({Key? key, required this.index}) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      width: 160,
      margin: EdgeInsets.only(
          left: index == 0 ? 18 : 0, right: index == 4 ? 18 : 0),
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Image.network(
                "https://rickyricko302.github.io/Indovel/assets/img/220px-Laskar_pelangi_sampul.jpg",
                width: 160,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                "Laskar Pelangi",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.nunito(color: Themes.hitam, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Rp 45.000",
                  style: GoogleFonts.nunito(color: Colors.orange, fontSize: 16),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    "Rp 45.000",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
