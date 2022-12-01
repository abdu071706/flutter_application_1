
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/home_ui.dart';

class Bmi extends StatelessWidget {
  const Bmi({super.key});
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40,));
    return  Scaffold(backgroundColor: const Color.fromARGB(255, 0, 10, 26),
      appBar: AppBar(centerTitle: true,
        backgroundColor:Color.fromARGB(255, 1, 20, 36),
        title: Text(
          ' Результат Здоровья.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
          padding: EdgeInsets.all(15),
          child: Container(
          height: 400,
          width: 800,
          decoration:const BoxDecoration(
                        color:Color.fromARGB(255, 1, 20, 36),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
  ),SizedBox(height: 220,),
Container(
  height: 60,
  width: 900,
  child: ElevatedButton(style: style,
  onPressed: () {
Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const Homeui()),
              );}, child: Text('Считай заново',) ,)
    )
    ]
    )
    );
    }
  }
