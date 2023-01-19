import 'package:flutter/material.dart';
import 'package:jonyintlbd/constants/space_utils.dart';
import 'package:jonyintlbd/utils/size_config.dart';

class BannerImg extends StatelessWidget {
  const BannerImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(
          image: const AssetImage('assets/banner-img.jpg'),
          alignment: Alignment.center,
          height: SpaceUtils().fullHeight,
          width: SpaceUtils().fullWidth,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SpaceUtils().bannerHorizontalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey.withOpacity(0.5),
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'M/S. JONY INTERNATIONAL AGENCY',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline1!
                          .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
                    )),
              ),
              Container(
                color: Colors.grey.withOpacity(0.5),
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Customs Clearing and Forwarding Agent (Sea & Air)',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline2!
                          .copyWith(color: Colors.white),
                    )),
              ),
              Container(
                color: Colors.grey.withOpacity(0.5),
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Since 1988',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline6!
                          .copyWith(color: Colors.white),
                    )),
              )
            ],
          ),
        )
      ],
    );
  }
}
