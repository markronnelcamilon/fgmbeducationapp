// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:fl_chart/fl_chart.dart';

class PieChartSample1 extends StatefulWidget {
  const PieChartSample1({
    Key? key,
    this.width,
    this.height,
    this.backgroundColor,
    this.title1,
    this.title1Color,
    this.title2,
    this.title2Color,
    this.title3,
    this.title3Color,
    this.value1,
    this.value2,
    this.value3,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? backgroundColor;
  final String? title1;
  final Color? title1Color;
  final String? title2;
  final Color? title2Color;
  final String? title3;
  final Color? title3Color;
  final double? value1;
  final double? value2;
  final double? value3;

  @override
  _PieChartSample1State createState() => _PieChartSample1State();
}

class _PieChartSample1State extends State<PieChartSample1> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
          pieTouchData: PieTouchData(
              touchCallback: (FlTouchEvent event, pieTouchResponse) {
            setState(() {
              if (!event.isInterestedForInteractions ||
                  pieTouchResponse == null ||
                  pieTouchResponse.touchedSection == null) {
                touchedIndex = -1;
                return;
              }
              touchedIndex =
                  pieTouchResponse.touchedSection!.touchedSectionIndex;
            });
          }),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 20,
          sections: showingSections()),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: widget.title1Color,
            value: widget.value1! / widget.value3! * 100,
            title: (widget.value1! / widget.value3! * 100).toStringAsFixed(1) +
                '%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: widget.title2Color,
            value: widget.value2! / widget.value3! * 100,
            title: (widget.value2! / widget.value3! * 100).toStringAsFixed(1) +
                '%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );

        default:
          throw Error();
      }
    });
  }
}

class Indicator extends StatelessWidget {
  final Color? color;
  final String? text;
  final bool? isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key? key,
    this.color,
    this.text,
    this.isSquare,
    this.size = 16,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare! ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text!,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        )
      ],
    );
  }
}
