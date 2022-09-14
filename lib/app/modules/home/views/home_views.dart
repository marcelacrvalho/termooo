import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Adivinhe qual é a palavra',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      color: HomeController.to.isGreen.value
                          ? Colors.green
                          : Colors.black26,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      color: HomeController.to.isGreen.value
                          ? Colors.green
                          : Colors.black26,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      color: HomeController.to.isGreen.value
                          ? Colors.green
                          : Colors.black26,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      color: HomeController.to.isGreen.value
                          ? Colors.green
                          : Colors.black26,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      color: HomeController.to.isGreen.value
                          ? Colors.green
                          : Colors.black26,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
