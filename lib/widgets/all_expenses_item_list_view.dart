import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int idx = 0;
  List<AllExpensesItemModel> items = [
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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                idx = 0;
              });
            },
            child: AllExpensesItem(
              isSelected: idx == 0,
              allExpensesItemModel: items[0],
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                idx = 1;
              });
            },
            child: AllExpensesItem(
              isSelected: idx == 1,
              allExpensesItemModel: items[1],
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                idx = 2;
              });
            },
            child: AllExpensesItem(
              isSelected: idx == 2,
              allExpensesItemModel: items[2],
            ),
          ),
        ),
      ],
    );
  }
}
