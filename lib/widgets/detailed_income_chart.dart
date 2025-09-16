import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, piewTouchResponse) {
          activeIndex =
              piewTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: activeIndex == 0 ? 60 : 50,
          value: 40,
          color: const Color(0XFF208BC7),
          title: activeIndex == 0 ? 'Design Service' : '40%',
          titlePositionPercentageOffset: activeIndex == 0 ? -1.7 : 0.5,
          titleStyle: activeIndex == 0
              ? AppStyles.styleMedium16(
                  context,
                ).copyWith(color: const Color(0XFF208BC7))
              : TextStyle(color: Colors.white),
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 60 : 50,
          value: 25,
          color: const Color(0XFF4DB7F2),
          title: activeIndex == 1 ? 'Design Product' : '25%',
          titlePositionPercentageOffset: activeIndex == 1 ? -1.7 : 0.5,
          titleStyle: activeIndex == 1
              ? AppStyles.styleMedium16(
                  context,
                ).copyWith(color: const Color(0XFF4DB7F2))
              : TextStyle(color: Colors.white),
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 60 : 50,
          value: 20,
          color: const Color(0XFF064060),
          title: activeIndex == 2 ? 'Product Royalti' : '20%',
          titlePositionPercentageOffset: activeIndex == 2 ? -1.7 : 0.5,
          titleStyle: activeIndex == 2
              ? AppStyles.styleMedium16(
                  context,
                ).copyWith(color: const Color(0XFF064060))
              : TextStyle(color: Colors.white),
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 60 : 50,
          value: 20,
          color: const Color(0XFFE2DECD),
          title: activeIndex == 3 ? 'Other' : '20%',
          titlePositionPercentageOffset: activeIndex == 3 ? -1.7 : 0.5,
          titleStyle: activeIndex == 3
              ? AppStyles.styleMedium16(
                  context,
                ).copyWith(color: const Color(0XFFE2DECD))
              : TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
