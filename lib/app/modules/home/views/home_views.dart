import 'package:flutter/material.dart';
import 'package:termooo/app/modules/home/controllers/home_controllers.dart';
import 'package:termooo/app/modules/home/widgets/row_input_widgets.dart';

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
            children: const [
              Text(
                'Adivinhe qual é a palavra',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              CustomRowInput(),
            ],
          ),
        ),
      ),
    );
  }
}
