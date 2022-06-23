import 'package:flutter/material.dart';

import 'dance_style.dart';

 class DanceDetailScreen extends StatelessWidget {
   const DanceDetailScreen({Key? key}) : super(key: key);

  // final List<String> styles = [
  //   "Бачата — музыкальный стиль и танец Доминиканской Республики, получивший также широкое распространение в латиноамериканских странах Карибского моря, а также в тех из латиноамериканских общин США, где преобладают выходцы из этих стран",
  //   "Сальса — современный социальный танец из США и Латинской Америки, который танцуют парно или в группах. Танец возник в 1970-х годах в Нью-Йорке."
  // ];
  getDanceStyleText(DanceStyle danceStyle) {
    if (danceStyle == DanceStyle.bachata) {
      return "Бачата — музыкальный стиль и танец Доминиканской Республики, получивший также широкое распространение в латиноамериканских странах Карибского моря, а также в тех из латиноамериканских общин США, где преобладают выходцы из этих стран";
    }
    if (danceStyle == DanceStyle.salsa) {
      return "Сальса — современный социальный танец из США и Латинской Америки, который танцуют парно или в группах. Танец возник в 1970-х годах в Нью-Йорке.";
    }
    if (danceStyle == DanceStyle.kizomba) {
      return "Кизомба — современный городской популярный парный танец, а также музыкальный жанр. Музыка кизомбы возникла как смесь музыки традиционной ангольской сембы и карибского зука: из-за похожести ритма музыкальный стиль кизомба иногда путают с последним. Кизомба — чувственный, романтичный танец.";
    }
  }

  @override
  Widget build(BuildContext context) {
    final style = ModalRoute
        .of(context)!
        .settings
        .arguments as DanceStyle;
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: 2,
          separatorBuilder: (BuildContext context, int index) =>
          const Divider(
            thickness: 3,
            color: Colors.blue,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(getDanceStyleText(style)),
            );
          },
        ),
      ),
    );
  }
}
