import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.backgroundColor,
  });
  final String image;
  final Color? imageColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: backgroundColor ?? Color(0XFFFAFAFA),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: imageColor == null ? Color(0xff064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
