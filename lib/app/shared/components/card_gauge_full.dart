import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CardGaugeFull extends StatelessWidget {
  const CardGaugeFull({
    super.key,
    required this.title,
    required this.value,
    required this.minimum,
    required this.maximum,
  });

  final String title;
  final double value;
  final double minimum;
  final double maximum;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.52,
      width: Get.width / 2 / 2,
      padding: EdgeInsets.all(Get.width * 0.005),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(Get.width * 0.01),
          child: SfRadialGauge(
            title: GaugeTitle(text: title, alignment: GaugeAlignment.near),
            axes: [
              RadialAxis(
                startAngle: 270,
                endAngle: 270,
                showTicks: false,
                showLabels: false,
                minimum: minimum,
                maximum: maximum,
                axisLineStyle: AxisLineStyle(
                  thickness: 0.15,
                  color: Colors.redAccent.shade100,
                  thicknessUnit: GaugeSizeUnit.factor,
                ),
                annotations: [
                  GaugeAnnotation(
                    axisValue: 50,
                    widget: Text(
                      value.toString(),
                      style: TextStyle(
                        fontSize: 46,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
                pointers: [
                  RangePointer(
                    value: value,
                    width: 20,
                    color: Colors.redAccent.shade400,
                    cornerStyle: CornerStyle.bothCurve,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
