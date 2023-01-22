import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jonyintlbd/pages/landing_page/components/about_us.dart';
import 'package:jonyintlbd/pages/landing_page/components/banner.dart';
import 'package:jonyintlbd/pages/landing_page/components/clients.dart';
import 'package:jonyintlbd/pages/landing_page/components/contact_us.dart';
import 'package:jonyintlbd/pages/landing_page/components/footer.dart';
import 'package:jonyintlbd/pages/landing_page/components/gallery.dart';
import 'package:jonyintlbd/pages/landing_page/components/services.dart';
import 'package:jonyintlbd/pages/landing_page/components/specialise.dart';
import 'package:jonyintlbd/pages/landing_page/components/team.dart';

class MobileView extends StatelessWidget {
  MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BannerImg(),
          AboutUs(deviceType: 'Mobile'),
          Services(),
          Specialise(),
          Gallery(),
          Clients(),
          Team(),
          ContactUs(),
          Footer()
        ],
      ),
    );
  }
}
