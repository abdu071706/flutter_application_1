import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/bmi_ui.dart';

enum Gender {
  male,
  female,
}

class Homeui extends StatefulWidget {
  const Homeui({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';

  @override
  State<Homeui> createState() => _HomeuiState();
}

class _HomeuiState extends State<Homeui> {
  double height = 180;

  Gender? selectedgender;

  int age = 18;

  int weight = 40;

  Color activeColor = Color.fromARGB(255, 31, 124, 205);
  Color inactiveColor = Color(0XFF141D2E);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
      fontSize: 50,
    ));
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 10, 26),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedgender = Gender.male;
                  });
                },
                child: Container(
                  width: 175,
                  height: 200,
                  decoration: BoxDecoration(
                    color: selectedgender == Gender.male
                        ? activeColor
                        : inactiveColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.male,
                        size: 90,
                        color: Colors.white,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          color: Color.fromARGB(255, 11, 11, 11),
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    child: Container(
                      width: 175,
                      height: 200,
                      decoration: BoxDecoration(
                          color: selectedgender == Gender.female
                              ? activeColor
                              : inactiveColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.female,
                            size: 90,
                            color: Colors.white,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                              color: Color.fromARGB(255, 11, 11, 11),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
                color: const Color(0XFF141D2E),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                const Text(
                  "HEIGHT",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 11, 11, 11),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' $height',
                      style: const TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "CM",
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SliderTheme(
                      data: SliderThemeData(thumbColor: Colors.blue),
                      child: Slider(
                        value: height,
                        label: weight.round().toString(),
                        min: 100,
                        max: 220,
                        divisions: 20,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue;
                          });
                        },
                      ),
                    ),
                    Row(
                      children: [],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 180,
                    width: 175,
                    decoration: const BoxDecoration(
                        color: Color(0XFF141D2E),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'WEIGHT',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 11, 11, 11),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$weight',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    tooltip: '$weight',
                                    icon: Icon(
                                      Icons.remove,
                                      size: 30,
                                      color: Color.fromARGB(255, 232, 228, 228),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    tooltip: '$weight',
                                    icon: Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Color.fromARGB(255, 229, 224, 224),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    height: 180,
                    width: 175,
                    decoration: const BoxDecoration(
                        color: Color(0XFF141D2E),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'AGE',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 11, 11, 11),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$age',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    tooltip: '$age',
                                    icon: Icon(
                                      Icons.remove,
                                      size: 30,
                                      color: Color.fromARGB(255, 229, 224, 224),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    tooltip: '$age',
                                    icon: Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Color.fromARGB(255, 229, 224, 224),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 60,
              width: 1200,
              child: ElevatedButton(
                style: style,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bmi()),
                  );
                },
                child: Text('Calculate'),
              ))
        ]),
      ),
    );
  }
}
