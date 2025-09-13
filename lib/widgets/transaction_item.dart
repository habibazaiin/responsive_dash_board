import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0XFFFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: Color(0XFFAAAAAA)),
        ),
        trailing: Text(
          transactionModel.date,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.isWithDraw
                ? Color(0XFFF3735E)
                : Color(0XFF7CD87A),
          ),
        ),
      ),
    );
  }
}
