import 'package:flutter/material.dart';
import 'package:jonyintlbd/pages/landing_page/components/about_us.dart';
import 'package:jonyintlbd/pages/landing_page/components/banner.dart';
import 'package:jonyintlbd/pages/landing_page/components/contact_us.dart';
import 'package:jonyintlbd/pages/landing_page/components/footer.dart';
import 'package:jonyintlbd/pages/landing_page/components/gallery.dart';
import 'package:jonyintlbd/pages/landing_page/components/services.dart';
import 'package:jonyintlbd/pages/landing_page/components/specialise.dart';
import 'package:jonyintlbd/pages/landing_page/components/team.dart';
import 'package:jonyintlbd/utils/size_config.dart';

import 'clients.dart';

class DesktopView extends StatelessWidget {
  DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BannerImg(),
          AboutUs(deviceType: 'Desktop'),
          Services(),
          Specialise(),
          Gallery(),
          Clients(),
          Team(),
          ContactUs(),
          Footer(),
        ],
      ),
    );
  }
}
