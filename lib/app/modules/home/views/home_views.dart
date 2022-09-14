import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:termooo/app/modules/home/widgets/text_field_widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.send),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Adivinhe qual é a palavra',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            _populateInput(),
            _populateInput(),
            _populateInput(),
            _populateInput(),

          ],
        ),
      ),
    );
  }

  Widget _populateInput() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(Colors.black26),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(Colors.black26),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(Colors.black26),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(Colors.black26),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(Colors.black26),
        ),
      ],
    );
  }
}
