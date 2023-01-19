import 'package:flutter/material.dart';
import 'package:jonyintlbd/utils/colors.dart';

class HoverEffectIcon extends StatefulWidget {
  final IconData icon;
  const HoverEffectIcon({Key? key, required this.icon}) : super(key: key);

  @override
  State<HoverEffectIcon> createState() => _HoverEffectIconState();
}

class _HoverEffectIconState extends State<HoverEffectIcon> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState((){
          isHover = value;
        });
      },
        child: Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: isHover ? ColorUtils.mintGreen : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: isHover ? Colors.white : ColorUtils.mintGreen, width: 2)),
            child:
            FittedBox(fit: BoxFit.fill, child: Icon(widget.icon, color: isHover ? Colors.white : ColorUtils.mintGreen))));
  }
}
