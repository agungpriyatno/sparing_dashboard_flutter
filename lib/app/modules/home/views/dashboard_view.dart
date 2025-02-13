import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sparing_dashboard/app/modules/home/views/home_view.dart';
import 'package:sparing_dashboard/app/shared/components/card_gauge_full.dart';
import 'package:sparing_dashboard/app/shared/components/card_text.dart';

import '../controllers/home_controller.dart';

class DashboardView extends GetView<HomeController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: Get.height * 0.78,
          width: Get.width / 2,
          child: Row(
            children: [
              Column(
                children: [
                  Obx(
                    () => CardText(
                      title: "PH",
                      value: controller.phVal.value,
                      parameter: "ppm",
                    ),
                  ),
                  Obx(
                    () => CardText(
                      title: "NH3N",
                      value: controller.nh3nVal.value,
                      parameter: "ppm",
                    ),
                  ),
                  Obx(
                    () => CardText(
                      title: "TSS",
                      value: controller.tssVal.value,
                      parameter: "ppm",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Obx(
                    () => CardGaugeFull(
                      title: "DEBIT",
                      minimum: 0,
                      maximum: 100,
                      value: controller.debitVal.value,
                    ),
                  ),
                  Obx(
                    () => CardText(
                      title: "COD",
                      value: controller.codVal.value,
                      parameter: "ppm",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.78,
          width: Get.width / 2,
          child: Row(
            children: [
              Column(
                children: [
                  Obx(
                    () => CardGaugeHalf(
                      title: "PH",
                      minimum: 0,
                      maximum: 100,
                      value: controller.phVal.value,
                    ),
                  ),
                  Obx(
                    () => CardGaugeHalf(
                      title: "NH3N",
                      minimum: 0,
                      maximum: 100,
                      value: controller.nh3nVal.value,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Obx(
                    () => CardGaugeHalf(
                      title: "TSS",
                      minimum: 0,
                      maximum: 100,
                      value: controller.tssVal.value,
                    ),
                  ),
                  Obx(
                    () => CardGaugeHalf(
                      title: "COD",
                      minimum: 0,
                      maximum: 100,
                      value: controller.codVal.value,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
