import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:termooo/app/modules/home/controllers/home_controllers.dart';
import 'package:termooo/app/modules/home/widgets/text_field_widgets.dart';

class CustomRowInput extends StatelessWidget {
  const CustomRowInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(
                () => CustomTextField(
              controller: HomeController.to.controller1,
              color: HomeController.to.fillColor[0],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(
                () => CustomTextField(
              controller: HomeController.to.controller2,
              color: HomeController.to.fillColor[1],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(
                () => CustomTextField(
              controller: HomeController.to.controller3,
              color: HomeController.to.fillColor[2],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(
                () => CustomTextField(
              controller: HomeController.to.controller4,
              color: HomeController.to.fillColor[3],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(
                () => CustomTextField(
              controller: HomeController.to.controller5,
              color: HomeController.to.fillColor[4],
            ),
          ),
        ),
      ],
    );
  }
}
