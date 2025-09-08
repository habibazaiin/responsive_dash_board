import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)),
        ),
      ),
    
      child: Row(
        children: [
          Text('Monthly', style: AppStyles.styleMedium16(context)),
          SizedBox(height: 18),
          Transform.rotate(
            angle: -1.57079633,
            child: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ],
      ),
    );
  }
}
