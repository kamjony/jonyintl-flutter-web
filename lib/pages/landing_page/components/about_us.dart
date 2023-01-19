import 'package:flutter/material.dart';
import 'package:jonyintlbd/constants/space_utils.dart';
import 'package:jonyintlbd/utils/colors.dart';
import 'package:jonyintlbd/utils/size_config.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class AboutUs extends StatelessWidget {

  final String deviceType;
  const AboutUs({Key? key, required this.deviceType}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _videoController = YoutubePlayerController.fromVideoId(
      videoId: '1VKv07JJxdQ',
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );
    const aboutDetails =
        "JONY INTERNATIONAL AGENCY is a customs clearing and forwarding Agent. We are one of the most experienced C&F agent's in Bangladesh. We do all kind of C&F works as well since 1988 at any port in Bangladesh. We are intended to provide precision services for Custom Clearance for Import and Export consignments at any port in Bangladesh. We arrange clearances under Bangladesh Customs acts. We also arrange Sea Freight Forwarding Service, Air Freight Forwarding Services Service, Transportation Services, Insurance Services and Logistics Solutions.";
    List<Map<String, dynamic>> items = [
      {
        'icon': Icons.person,
        'title': 'COMMITTED TO ACHIEVE CUSTOMER SATISFACTION',
        'desc':
        'We are committed to ensure that all our product deliveries meet customer expectations in all respects, including the service and quality management.'
      },
      {
        'icon': Icons.construction,
        'title': 'HIGHLY EFFICIENT WORKERS',
        'desc':
        'Our employees are all trained professionally and working hard is their motto and it gives us quick results'
      },
      {
        'icon': Icons.balance,
        'title': 'CUSTOMER-CENTRIC POLICY',
        'desc':
        'All our policies are there to put our customers first, we make it a priority to provide an exceptional customer experience.'
      },
      {
        'icon': Icons.description,
        'title': 'COMPLETE DOCUMENTATION',
        'desc': 'We provide complete paperworks and that is what makes us transperant.'
      },
    ];

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: SpaceUtils().sectionVerticalPadding,
          horizontal: SpaceUtils().sectionHorizontalPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('ABOUT US', style: Theme.of(context).textTheme.headline4),
          SizedBox(height: SpaceUtils().elementVerticalSpace),
          Text(aboutDetails,
              textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText1),
          SizedBox(
            height: SpaceUtils().elementVerticalSpace,
          ),
          generateView(context, items, _videoController),
        ],
      ),
    );
  }

  Widget generateView(BuildContext context, List items, YoutubePlayerController videoController) {
    late Widget widget;



    if (deviceType == 'Desktop') {
      widget = SizedBox(
        width: SpaceUtils().fullWidth,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 2,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  itemBuilder: (context, index) {
                    return aboutItem(context,
                        iconData: items[index]['icon'],
                        title: items[index]['title'],
                        desc: items[index]['desc']);
                  },
                  separatorBuilder: (context, index) {
                    return Container();
                  },
                  itemCount: items.length,
                  shrinkWrap: true),
            ),
            SizedBox(width: SizeConfig.blockSizeHorizontal! * 2,),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal! * 5),
                child: YoutubePlayer(
                  controller: videoController,
                  aspectRatio: 16 / 9,
                ),
              ),
            ),

          ],
        ),
      );
    } else {
      widget = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, index) {
                  return aboutItem(context,
                      iconData: items[index]['icon'],
                      title: items[index]['title'],
                      desc: items[index]['desc']);
                },
                separatorBuilder: (context, index) {
                  return Container();
                },
                itemCount: items.length,
                shrinkWrap: true),
          ),
          SizedBox(height: SpaceUtils().elementVerticalSpace),
          YoutubePlayer(
            controller: videoController,
            aspectRatio: 16 / 9,
          ),
        ],
      );
    }
    return widget;
  }

  Widget aboutItem(BuildContext context,
      {required IconData iconData, required String title, required String desc}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
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
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
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

