import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sparing_dashboard/app/modules/home/controllers/home_controller.dart';

class TabView extends GetView<HomeController> {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * 0.1,
      child: Center(
        child: SizedBox(
          width: Get.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => controller.changePage(1),
                      child: Obx(
                        () => Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                            vertical: Get.width * 0.005,
                          ),
                          decoration: BoxDecoration(
                            color: controller.page.value == 1
                                ? Colors.orange
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Real Time Monitoring",
                            style: TextStyle(
                              color: controller.page.value == 1
                                  ? Colors.white70
                                  : Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: Get.width * 0.015),
              GestureDetector(
                  onTap: () => controller.changePage(2),
                  child: Obx(
                    () => Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.02,
                          vertical: Get.width * 0.005,
                        ),
                        decoration: BoxDecoration(
                          color: controller.page.value == 2
                              ? Colors.orange
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.refresh,
                          color: controller.page.value == 2
                              ? Colors.white
                              : Colors.orange,
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
