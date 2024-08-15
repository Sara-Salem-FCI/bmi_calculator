import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/gender_container.dart';
import 'package:bmi_calculator/widgets/weight_age.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

double height = 150;
int weight = 60;
int age = 20;
bool isMale = true;

class _HomeScreenState extends State<HomeScreen> {
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
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: GenderContainer(
                              gender: 'Male',
                              imagePath: 'assets/images/male.png',
                              isSelected: isMale,
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: GenderContainer(
                              gender: 'Female',
                              imagePath: 'assets/images/female.png',
                              isSelected: !isMale,
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xff333244),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Height',
                              style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${height.round()}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  'cm',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Slider(
                                min: 50,
                                max: 200,
                                value: height,
                                inactiveColor: Colors.white,
                                activeColor: const Color(0xffE83D67),
                                onChanged: (value) {
                                  setState(() {
                                    height = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: WeightAge(
                              title: 'Weight',
                              value: weight,
                              onMinus: () {
                                setState(() {
                                  if (weight == 5) {
                                  } else {
                                    weight--;
                                  }
                                });
                              },
                              onPlus: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: WeightAge(
                              title: 'Age',
                              value: age,
                              onMinus: () {
                                setState(() {
                                  if (age == 1) {
                                  } else {
                                    age--;
                                  }
                                });
                              },
                              onPlus: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Container(
                height: 70,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10),
                color: const Color(0xffE83D67),
                child: TextButton(
                  onPressed: () {
                    double bmi = weight / ((height / 100) * (height / 100));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          result: bmi,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
