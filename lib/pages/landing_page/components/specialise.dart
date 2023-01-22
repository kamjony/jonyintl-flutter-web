import 'package:flutter/material.dart';
import 'package:jonyintlbd/constants/space_utils.dart';
import 'package:jonyintlbd/utils/colors.dart';

class Specialise extends StatelessWidget {
  const Specialise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {'title': 'Car Imports', 'img': 'assets/car.jpeg'},
      {'title': 'Commercial Imports', 'img': 'assets/toys.jpg'},
      {'title': 'Industrial Imports', 'img': 'assets/construction.jpeg'},
      {'title': 'Other Imports', 'img': 'assets/makeup.webp'},
    ];

    return Container(
      width: SpaceUtils().fullWidth,
      padding: EdgeInsets.symmetric(
          horizontal: SpaceUtils().sectionHorizontalPadding,
          vertical: SpaceUtils().sectionVerticalPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('WE SPECIALISE IN..', style: Theme.of(context).textTheme.headline4),
          SizedBox(height: SpaceUtils().elementVerticalSpace),
          Text('Our dedicated team is specialised in many commercial or industrial items.',
              textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText1),
          SizedBox(
            height: SpaceUtils().elementVerticalSpace,
          ),
          // Flexible(
          //   child: ListView.separated(
          //       padding: const EdgeInsets.symmetric(horizontal: 4),
          //       itemBuilder: (context, index) {
          //         return imgContainer(context,
          //             title: items[index]['title']!,
          //             imgUrl: items[index]['img']!);
          //       },
          //       separatorBuilder: (context, index) {
          //         return Container(
          //           height: SpaceUtils().elementVerticalSpace,
          //         );
          //       },
          //       itemCount: items.length,
          //       shrinkWrap: true),
          // ),
          Wrap(
            children: List.generate(items.length, (index) => imgContainer(context,
                title: items[index]['title']!,
                imgUrl: items[index]['img']!)),
          )
        ],
      ),
    );
  }

  Widget imgContainer(BuildContext context, {required String imgUrl, required String title}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 8,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.grey[300]!, width: 2)
        ),
        child: SizedBox(
          height: 280,
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 240,
                width: 300,
                child: FittedBox(
                  fit: BoxFit.contain,
                    child: Image.asset(imgUrl)),
              ),
              Container(
                  width: 300,
                decoration: BoxDecoration(
                    color: ColorUtils.mintGreen,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))
                ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
