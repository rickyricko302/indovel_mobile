import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/profile/controllers/profile_controller.dart';

import '../../../../../data/themes.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

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
                "Profile",
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5), blurRadius: 4)
                    ],
                    borderRadius: BorderRadius.circular(5)),
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
                            width: 90,
                            height: 90,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ricky Verdiyanto",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.nunito(
                                  color: Themes.hitam,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              "verdiyantorky123@gmail.com",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.nunito(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Chip(
                              label: Text(
                                "Premium",
                                style: GoogleFonts.nunito(color: Colors.white),
                              ),
                              backgroundColor: Colors.green,
                            )
                          ],
                        ))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ListTile(
                tileColor: Colors.white,
                onTap: () {},
                leading: const Icon(
                  Icons.account_circle,
                  size: 30,
                ),
                minLeadingWidth: 24,
                title: const Text("Informasi Akun"),
                trailing: const Icon(
                  Icons.navigate_next,
                  size: 32,
                ),
              ),
              const Divider(),
              ListTile(
                enabled: false,
                tileColor: Colors.white,
                onTap: () {},
                leading: const Icon(
                  Icons.upgrade,
                  size: 30,
                ),
                minLeadingWidth: 24,
                title: const Text("Upgrade Premium"),
                trailing: const Icon(
                  Icons.navigate_next,
                  size: 32,
                ),
              ),
              const Divider(),
              ListTile(
                tileColor: Colors.white,
                onTap: () {},
                leading: const Icon(
                  Icons.delivery_dining,
                  size: 30,
                ),
                minLeadingWidth: 24,
                title: const Text("Lacak Pesanan"),
                trailing: const Icon(
                  Icons.navigate_next,
                  size: 32,
                ),
              ),
              const Divider(),
              ListTile(
                tileColor: Colors.white,
                onTap: () {},
                leading: const Icon(
                  Icons.card_membership,
                  size: 30,
                ),
                minLeadingWidth: 24,
                title: const Text("Voucher"),
                trailing: const Icon(
                  Icons.navigate_next,
                  size: 32,
                ),
              ),
              const Divider(),
              ListTile(
                tileColor: Colors.white,
                onTap: () {},
                leading: const Icon(
                  Icons.headphones,
                  size: 30,
                ),
                minLeadingWidth: 24,
                title: const Text("Bantuan"),
                trailing: const Icon(
                  Icons.navigate_next,
                  size: 32,
                ),
              ),
              const Divider(),
              ListTile(
                tileColor: Colors.white,
                onTap: () {},
                leading: const Icon(
                  Icons.receipt_long,
                  size: 30,
                ),
                minLeadingWidth: 24,
                title: const Text("Syarat dan Ketentuan"),
                trailing: const Icon(
                  Icons.navigate_next,
                  size: 32,
                ),
              ),
              const Divider(),
              ListTile(
                tileColor: Colors.white,
                onTap: () {},
                leading: const Icon(
                  Icons.privacy_tip,
                  size: 30,
                ),
                minLeadingWidth: 24,
                title: const Text("Kebijakan Privasi"),
                trailing: const Icon(
                  Icons.navigate_next,
                  size: 32,
                ),
              ),
              const Divider(),
              ListTile(
                tileColor: Colors.white,
                onTap: () {},
                leading: const Icon(
                  Icons.feed,
                  size: 30,
                ),
                minLeadingWidth: 24,
                title: const Text("Tentang App"),
                trailing: const Icon(
                  Icons.navigate_next,
                  size: 32,
                ),
              ),
              const Divider(),
              ListTile(
                tileColor: Colors.white,
                onTap: () {},
                leading: const RotatedBox(
                  quarterTurns: 2,
                  child: Icon(
                    Icons.logout,
                    size: 30,
                  ),
                ),
                minLeadingWidth: 24,
                title: const Text("Keluar"),
                trailing: const Icon(
                  Icons.navigate_next,
                  size: 32,
                ),
              ),
              const Divider(),
            ],
          ),
        ));
  }
}
