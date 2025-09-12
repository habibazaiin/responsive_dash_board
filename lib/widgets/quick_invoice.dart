import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(children: [QuickInvoiceHeader()]),
    );
  }
}

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        Expanded(child: SizedBox()),
        CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xfffafafa),
          child: Icon(Icons.add, color: Color(0xff4eb7f2)),
        ),
      ],
    );
  }
}
