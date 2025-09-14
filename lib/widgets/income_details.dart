import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/widgets/items_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<ItemDetailsModel> items = [
    ItemDetailsModel(color: Color(0XFF208BC7), title: 'Design Service', value: '40%'),
    ItemDetailsModel(color: Color(0XFF4DB7F2), title: 'Design Service', value: '25%'),
    ItemDetailsModel(color: Color(0XFF064060), title: 'Design Service', value: '20%'),
    ItemDetailsModel(color: Color(0XFFE2DECD), title: 'Design Service', value: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
      return ItemDetails(itemDetailsModel: items[index]);
    });
  }
}

