import 'package:flutter/material.dart';
import 'package:jonyintlbd/pages/landing_page/components/about_us.dart';
import 'package:jonyintlbd/pages/landing_page/components/banner.dart';
import 'package:jonyintlbd/utils/size_config.dart';

class MobileView extends StatelessWidget {
  MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BannerImg(),
          SizedBox(height: SizeConfig.blockSizeVertical! * 10),
          AboutUs(),
          SizedBox(
            height: SizeConfig.blockSizeHorizontal! * 5,
          )
        ],
      ),
    );
  }
}
