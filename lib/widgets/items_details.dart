import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 24),
          Container(
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
              color: itemDetailsModel.color,
              shape: OvalBorder(),
            ),
          ),
          SizedBox(width: 6),
          Text(
            itemDetailsModel.title,
            style: AppStyles.styleRegular16(context),
          ),
          SizedBox(width: 32),
          Text(itemDetailsModel.value, style: AppStyles.styleMedium16(context)),
        ],
      ),
    );

    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
