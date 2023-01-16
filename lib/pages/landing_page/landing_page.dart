import 'package:flutter/material.dart';
import 'package:jonyintlbd/pages/landing_page/components/desktop_view.dart';
import 'package:jonyintlbd/pages/landing_page/components/mobile_view.dart';
import 'package:jonyintlbd/utils/size_config.dart';
import 'package:jonyintlbd/utils/view_wrapper.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {


    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        // appBar: AppBar(title: Text('Headline', style: Theme.of(context).textTheme.headline2,),),
        body: ViewWrapper(
          desktopView: DesktopView(),
          mobileView:  MobileView(),
        )
    );
  }

  // Widget desktopView() {
  //   return SingleChildScrollView(
  //     child: Column(
  //       children: [
  //         Container(
  //           child: Text('Desktop'),
  //         ),
  //
  //       ],
  //     ),
  //   );
  // }
}