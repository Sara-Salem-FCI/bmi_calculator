import 'package:bmi_calculator/widgets/gender_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: const Color(0xff24263B),
      ),
      body: Container(
        color: const Color(0xff1C2135),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: GenderContainer(
                          gender: 'Male',
                          imagePath: 'assets/images/male.png',
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Expanded(
                          child: GenderContainer(
                            gender: 'Female',
                            imagePath: 'assets/images/female.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
