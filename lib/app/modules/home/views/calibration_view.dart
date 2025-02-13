import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sparing_dashboard/app/modules/home/controllers/home_controller.dart';

class CalibrationView extends GetView<HomeController> {
  const CalibrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Obx(
              () => CardCalibration(
                title: "PH",
                parameter: "pmm",
                value: controller.phVal.value,
                kctrl: controller.phKCtrl,
                bctrl: controller.phBCtrl,
                getVal: () => controller.getVal("ph.val.get"),
                getCal: () => controller.getCal("ph.cal.get"),
                setCal: () => controller.setCal("ph.cal.set"),
              ),
            ),
            Obx(
              () => CardCalibration(
                title: "NH3N",
                parameter: "pmm",
                value: controller.nh3nVal.value,
                kctrl: controller.nh3nKCtrl,
                bctrl: controller.nh3nBCtrl,
                getVal: () => controller.getVal("nh3n.val.get"),
                getCal: () => controller.getCal("nh3n.cal.get"),
                setCal: () => controller.setCal("nh3n.cal.set"),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Obx(
              () => CardCalibration(
                title: "TSS",
                parameter: "pmm",
                value: controller.tssVal.value,
                kctrl: controller.tssKCtrl,
                bctrl: controller.tssBCtrl,
                getVal: () => controller.getVal("tss.val.get"),
                getCal: () => controller.getCal("tss.cal.get"),
                setCal: () => controller.setCal("tss.cal.set"),
              ),
            ),
            Obx(
              () => CardCalibration(
                title: "COD",
                parameter: "pmm",
                value: controller.codVal.value,
                kctrl: controller.codKCtrl,
                bctrl: controller.codBCtrl,
                getVal: () => controller.getVal("cod.val.get"),
                getCal: () => controller.getCal("cod.cal.get"),
                setCal: () => controller.setCal("cod.cal.set"),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class CardCalibration extends StatelessWidget {
  const CardCalibration({
    super.key,
    required this.title,
    required this.parameter,
    required this.value,
    required this.kctrl,
    required this.bctrl,
    required this.getVal,
    required this.getCal,
    required this.setCal,
  });

  final String title;
  final String parameter;
  final double value;
  final TextEditingController kctrl;
  final TextEditingController bctrl;
  final void Function() getVal;
  final void Function() getCal;
  final void Function() setCal;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Get.width * 0.005),
      height: Get.height * 0.39,
      width: Get.width / 2,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(Get.width * 0.005),
          child: Row(
            children: [
              SizedBox(
                width: Get.width * 0.2,
                height: Get.height * 0.37,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          value.toString(),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        SizedBox(width: Get.width * 0.005),
                        Text(
                          parameter,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => getVal(),
                      child: Text("GET VALUE"),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: Get.height * 0.37,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: kctrl,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'K',
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: TextField(
                              controller: bctrl,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'B',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => getCal(),
                              child: Text("GET CAL VALUE"),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => setCal(),
                              child: Text("SET CAL VALUE"),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
