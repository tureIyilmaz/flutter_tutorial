import 'package:flutter/material.dart';
import 'package:life_expectancies/slider_container.dart';

import 'container.dart';
import 'gender_input.dart';
import 'outline_container.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool? isMan;
  int boy = 170;
  int kilo = 80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    color: Colors.green,
                    child: OutlineContainer(
                      text: 'BOY',
                      number: boy,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    color: Colors.green,
                    child: OutlineContainer(
                      text: 'KİLO',
                      number: kilo,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: MyContainer(
                color: Colors.green,
                child: SliderContainer(
                  mainText: 'Haftada kaç gün spor yapıyorsunuz ?',
                  minimum: 0,
                  maximum: 7,
                )),
          ),
          const Expanded(
            child: MyContainer(
              color: Colors.green,
              child: SliderContainer(
                mainText: 'Günde kaç sigara içiyorsunuz ?',
                minimum: 0,
                maximum: 20,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMan = true;
                      });
                    },
                    child: MyContainer(
                      // ignore: sort_child_properties_last
                      child: const GenderInput(
                        gender: 'male',
                        text: 'ERKEK',
                      ),
                      color: isMan == true ? Colors.blue : Colors.green,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMan = false;
                      });
                    },
                    child: MyContainer(
                      // ignore: sort_child_properties_last
                      child: const GenderInput(
                        gender: 'female',
                        text: 'KADIN',
                      ),
                      color: isMan == false ? Colors.pink : Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
