import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});

  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'Sep 2025',
      price: r'$20.234',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'Sep 2025',
      price: r'$20.234',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'Sep 2025',
      price: r'$20.234',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((entry) {
        int index = entry.key;
        var item = entry.value;

        return Expanded(
          child: index == 1
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: AllExpensesItem(allExpensesItemModel: item),
                )
              : AllExpensesItem(allExpensesItemModel: item),
        );
      }).toList(),
    );
  }
}
