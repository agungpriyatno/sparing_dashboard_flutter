import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardText extends StatelessWidget {
  const CardText({
    super.key,
    required this.title,
    required this.parameter,
    required this.value,
  });

  final String title;
  final String parameter;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.26,
      width: Get.width / 2 / 2,
      padding: EdgeInsets.all(Get.width * 0.005),
      child: Card(
        color: Colors.green.shade400,
        child: Padding(
          padding: EdgeInsets.all(Get.width * 0.01),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            value.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: Get.width * 0.005),
                          Text(
                            parameter,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_circle_up_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(width: Get.width * 0.005),
                        Text(
                          "Bellow treshold",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: Get.width * 0.02,
                child: Center(
                  child: Icon(
                    Icons.speed,
                    color: Colors.green,
                    size: Get.width * 0.02,
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
