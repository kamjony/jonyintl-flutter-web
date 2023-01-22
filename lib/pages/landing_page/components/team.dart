import 'package:flutter/material.dart';
import 'package:jonyintlbd/constants/space_utils.dart';

class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SpaceUtils().fullWidth,
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(
          horizontal: SpaceUtils().sectionHorizontalPadding,
          vertical: SpaceUtils().sectionVerticalPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('TEAM', style: Theme.of(context).textTheme.headline4),
          SizedBox(height: SpaceUtils().elementVerticalSpace),
          Text("Team means Together Everyone Achieves More.",
              textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText1),
          SizedBox(
            height: SpaceUtils().elementVerticalSpace,
          ),
        ],
      ),
    );
  }
}
