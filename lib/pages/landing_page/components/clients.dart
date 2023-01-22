import 'package:flutter/material.dart';
import 'package:jonyintlbd/constants/space_utils.dart';

class Clients extends StatelessWidget {
  const Clients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SpaceUtils().fullWidth,
      padding: EdgeInsets.symmetric(
          horizontal: SpaceUtils().sectionHorizontalPadding,
          vertical: SpaceUtils().sectionVerticalPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('CLIENTS', style: Theme.of(context).textTheme.headline4),
          SizedBox(height: SpaceUtils().elementVerticalSpace),
          Text("Our valued clients",
              textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText1),
          SizedBox(
            height: SpaceUtils().elementVerticalSpace,
          ),
        ],
      ),
    );
  }
}
