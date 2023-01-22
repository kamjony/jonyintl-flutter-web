import 'package:flutter/material.dart';
import 'package:jonyintlbd/constants/space_utils.dart';
import 'package:jonyintlbd/pages/landing_page/components/hover_effect_icon.dart';
import 'package:jonyintlbd/utils/size_config.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const serviceDetails =
        "We provide different services as per our customer needs. Contact us if you need any custom services.";

    List<Map<String, dynamic>> items = [
      {
        'icon': Icons.inventory_2,
        'title': 'Clearing & Forwarding',
        'desc':
            'We are the best at what we do. Clearing & Forwarding is our passion. We provide hassle-free service for our customers. So just sit back, relax and concentrate more on your business.'
      },
      {
        'icon': Icons.local_shipping,
        'title': 'Cargo Delivery',
        'desc':
        'We deliver your cargo safely and quickly to your preferred location. We have trucks, lorries and mini-vans at our disposal ready to set off.'
      },
      {
        'icon': Icons.book,
        'title': 'Complete Documentation',
        'desc':
        'We provide complete documentation of all the services we provided for an individual customer. No hidden charges or fees.'
      },
      {
        'icon': Icons.support_agent,
        'title': '24/7 Customer Help',
        'desc':
        'We have customer agents ready to answer all your queries in a timely and efficient manner. So give us a call and feel free to discuss anything you like.'
      },
    ];

    return Container(
      width: SpaceUtils().fullWidth,
      padding: EdgeInsets.symmetric(
          vertical: SpaceUtils().sectionVerticalPadding),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('SERVICES', style: Theme.of(context).textTheme.headline4),
          SizedBox(height: SpaceUtils().elementVerticalSpace),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SpaceUtils().sectionHorizontalPadding),
            child: Text(serviceDetails,
                textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText1),
          ),
          SizedBox(
            height: SpaceUtils().elementVerticalSpace,
          ),
          Flexible(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, index) {
                  return serviceContainer(context,
                      iconData: items[index]['icon'],
                      title: items[index]['title'],
                      desc: items[index]['desc']);
                },
                separatorBuilder: (context, index) {
                  return Container(
                    height: SpaceUtils().elementVerticalSpace,
                  );
                },
                itemCount: items.length,
                shrinkWrap: true),
          )
        ],
      ),
    );
  }

  Widget serviceContainer(BuildContext context,
      {required IconData iconData, required String title, required String desc}) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 40),
            Container(
              width: SpaceUtils().fullWidth,
              padding: EdgeInsets.symmetric(vertical: SpaceUtils().elementVerticalSpace, horizontal: SpaceUtils().sectionHorizontalPadding),
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                  border: Border.all(color: Colors.grey[300]!)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                  Text(
                    title.toUpperCase(),
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 1.80),
                  Flexible(
                      child: Text(desc,
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText2))
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: HoverEffectIcon(
            icon: iconData,
          ),
        )
      ],
    );
  }
}
