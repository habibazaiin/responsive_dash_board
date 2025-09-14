import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
      title: 'Cash WithDrawal',
      date: '13 April 2022',
      amount: r'$20.129',
      isWithDraw: true,
    ),
    TransactionModel(
      title: 'Landing Page Project',
      date: '13 April 2022',
      amount: r'$20.129',
      isWithDraw: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App Project',
      date: '13 April 2022',
      amount: r'$20.129',
      isWithDraw: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  }
}
