import 'package:flutter/material.dart';

class DanceDetailScreen extends StatelessWidget {
  DanceDetailScreen({Key? key}) : super(key: key);

  final List<String> users = [
    "Бачата — музыкальный стиль и танец Доминиканской Республики, получивший также широкое распространение в латиноамериканских странах Карибского моря, а также в тех из латиноамериканских общин США, где преобладают выходцы из этих стран",
    "Сальса — современный социальный танец из США и Латинской Америки, который танцуют парно или в группах. Танец возник в 1970-х годах в Нью-Йорке."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: 2,
          separatorBuilder: (BuildContext context, int index) => const Divider(
            thickness: 3,
            color: Colors.blue,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(users[index]),
            );
          },
        ),
      ),
    );
  }
}
