import 'package:evalu8/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
class ChartsWidget extends StatelessWidget {
   ChartsWidget({Key? key}) : super(key: key);
  List<GDPData>  _chartData = GDPData.getChartData();
  TooltipBehavior _tooltipBehavior = TooltipBehavior(enable: true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SfCircularChart(
              legend:
              Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
              tooltipBehavior: _tooltipBehavior,
              palette:
                  [
                    primaryColor,
                   secondaryColor,
                  ],
              series: <CircularSeries>[
                PieSeries<GDPData, String>(
                    dataSource: _chartData,
                    xValueMapper: (GDPData data, _) => data.continent,
                    yValueMapper: (GDPData data, _) => data.gdp,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true)
              ],
            )));
  }
}


class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
  static List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Positive', 1600),
      GDPData('Negative', 2490),
      GDPData('Neutral', 2900),
    ];
    return chartData;
  }
}