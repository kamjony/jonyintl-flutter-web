import 'package:flutter/material.dart';
import 'package:jonyintlbd/utils/size_config.dart';

class BannerImg extends StatelessWidget {
  const BannerImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(SizeConfig.blockSizeHorizontal! * 100);
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(
          image: const AssetImage('assets/banner-img.jpg'),
          alignment: Alignment.center,
          height: SizeConfig.blockSizeVertical! * 100,
          width: SizeConfig.blockSizeHorizontal! * 100,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal! * 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'M/S. JONY INTERNATIONAL AGENCY',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headline1,
                  )),
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Customs Clearing and Forwarding Agent (Sea & Air)',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headline3,
                  )),
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Since 1988',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headline6,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
