import 'package:flutter/material.dart';
import 'package:jonyintlbd/utils/colors.dart';
import 'package:jonyintlbd/utils/size_config.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _videoController = YoutubePlayerController.fromVideoId(
      videoId: '1VKv07JJxdQ',
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );

    return Column(
      children: [
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('About Us', style: Theme.of(context).textTheme.headline4)),
        SizedBox(
          height: SizeConfig.blockSizeHorizontal! * 3,
        ),
        SizedBox(
          width: SizeConfig.blockSizeHorizontal! * 100,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    aboutItem(context,
                        iconData: Icons.person,
                        title: 'COMMITTED TO ACHIEVE CUSTOMER SATISFACTION',
                        desc:
                            'We are committed to ensure that all our product deliveries meet customer expectations in all respects, including the service and quality management.'),
                    aboutItem(context,
                        iconData: Icons.construction,
                        title: 'HIGHLY EFFICIENT WORKERS',
                        desc:
                            'Our employees are all trained professionally and working hard is their motto and it gives us quick results.'),
                    aboutItem(context,
                        iconData: Icons.balance,
                        title: 'CUSTOMER-CENTRIC POLICY',
                        desc:
                            'All our policies are there to put our customers first, we make it a priority to provide an exceptional customer experience.'),
                    aboutItem(context,
                        iconData: Icons.description,
                        title: 'COMPLETE DOCUMENTATION',
                        desc: 'We provide complete paperworks and that is what makes us transperant.'),

                  ],
                ),
              ),
              SizedBox(width: SizeConfig.blockSizeHorizontal! * 2,),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal! * 5),
                  child: YoutubePlayer(
                    controller: _videoController,
                    aspectRatio: 16 / 9,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget aboutItem(BuildContext context,
      {required IconData iconData, required String title, required String desc}) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal! * 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorUtils.mintGreen, width: 2)),
              child:
                  FittedBox(fit: BoxFit.fill, child: Icon(iconData, color: ColorUtils.mintGreen))),
          SizedBox(width: SizeConfig.blockSizeHorizontal! * 0.80),
          Flexible(
            child: SizedBox(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        title,
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(decoration: TextDecoration.underline),
                      )),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 0.80),
                  Flexible(
                      child: Text(desc, maxLines: 3, style: Theme.of(context).textTheme.bodyText2))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
