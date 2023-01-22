import 'package:flutter/material.dart';
import 'package:jonyintlbd/constants/space_utils.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SpaceUtils().fullWidth,
      color: Theme.of(context).shadowColor,
      padding: EdgeInsets.symmetric(
          // horizontal: SpaceUtils().sectionHorizontalPadding,
          vertical: SpaceUtils().sectionVerticalPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '© Copyright Jony International Agency. All Rights Reserved',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: SpaceUtils().elementVerticalSpace,
          ),
          Text('Designed By: Md. Kamrul Amin',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey[500]))
        ],
      ),
    );
  }
}
