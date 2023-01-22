import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:jonyintlbd/constants/space_utils.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IFrameElement _iframeElement = IFrameElement();

    _iframeElement.height = '500';
    _iframeElement.width = '500';
    _iframeElement.src =
        'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d228.24754063871845!2d90.4033707950018!3d23.74878258938919!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b88fd8f1da15%3A0x7373d2a193bb69f5!2sRazzak%20Plaza!5e0!3m2!1sen!2sbd!4v1579071275945!5m2!1sen!2sbd';
    _iframeElement.style.border = 'none';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
          (int viewId) => _iframeElement,
    );

    return Container(
      width: SpaceUtils().fullWidth,
      padding: EdgeInsets.symmetric(
          horizontal: SpaceUtils().sectionHorizontalPadding,
          vertical: SpaceUtils().sectionVerticalPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('CONTACT US', style: Theme.of(context).textTheme.headline4),
          SizedBox(height: SpaceUtils().elementVerticalSpace),
          Text("Have any questions? We'd love to hear from you.",
              textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText1),
          SizedBox(
            height: SpaceUtils().elementVerticalSpace,
          ),
          SizedBox(
            height: 380,
            width: SpaceUtils().fullWidth,
            child: HtmlElementView(
              key: UniqueKey(),
              viewType: 'iframeElement',
            ),
          ),
          SizedBox(
            height: SpaceUtils().elementVerticalSpace * 3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SpaceUtils().sectionHorizontalPadding),
            child: Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Head Office: ', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold)),
                      Text('Office No#3B, 2nd Floor\n2, Shahid Tajuddin Ahmed Sarani Razzak Plaza, Moghbazar, Dhaka 1217', style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                ),
                const Spacer(),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Branch Office: ', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold)),
                      Text('Office No#6, 3rd Floor\n7, Sheikh Mujib Road Omrito Plaza, Barek Building, Agrabad, Chittagong', style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
