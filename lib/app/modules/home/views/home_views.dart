import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:termooo/app/modules/home/controllers/home_controllers.dart';
import 'package:termooo/app/modules/home/widgets/text_field_widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: HomeController.to.checkWord,
        child: const Icon(Icons.send),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Adivinhe qual é a palavra',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              _rowInput(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rowInput() {
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
