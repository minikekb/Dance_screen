import 'package:dance_life/dance_details_screen.dart';
import 'package:dance_life/dance_style.dart';
import 'package:flutter/material.dart';

class DancesListScreen extends StatelessWidget {
  const DancesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: ListView(
          children: const [
            Center(
              child: Text(
                "Dance Styles",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  height: 3,
                  fontSize: 20,
                ),
              ),
            ),
            DanceStyleWidget(
              url:
                  "https://thumbs.dreamstime.com/b/%D0%B6%D0%B8%D0%B2%D1%8F-bachata-%D0%BC%D1%83%D0%B7%D1%8B%D0%BA%D0%B0-%D0%BC%D0%BE-%D0%BE-%D1%8B%D1%85-%D0%BF%D0%B0%D1%80-%D1%82%D0%B0%D0%BD%D1%86%D1%83%D1%8F-%D0%B0%D1%82%D0%B8%D0%BD%D1%81%D0%BA%D0%B0%D1%8F-78010801.jpg",
              style: DanceStyle.bachata,
            ),
            DanceStyleWidget(
              url:
                  "https://thumbs.dreamstime.com/b/%D0%BF%D0%BB%D0%B0%D0%BA%D0%B0%D1%82-%D0%BF%D0%B0%D1%80%D1%82%D0%B8%D0%B8-%D1%81%D0%B0%D0%BB%D1%8C%D1%81%D1%8B-%D1%8D%D0%BB%D0%B5%D0%B3%D0%B0%D0%BD%D1%82%D0%BD%D0%B0%D1%8F-%D1%81%D0%B0%D0%BB%D1%8C%D1%81%D0%B0-%D1%82%D0%B0%D0%BD%D1%86%D0%B5%D0%B2-%D0%BF%D0%B0%D1%80-%D1%80%D0%B5%D1%82%D1%80%D0%BE-%D1%82%D0%B8%D0%BF-%D0%B8-106201773.jpg",
              style: DanceStyle.salsa,
            ),
            DanceStyleWidget(
              url:
                  "https://st2.depositphotos.com/8009420/10889/v/600/depositphotos_108892994-stock-illustration-couple-dancing-kizomba.jpg",
              style: DanceStyle.kizomba,
            ),
          ],
        ),
      ),
    );
  }
}

class DanceStyleWidget extends StatelessWidget {
  final String url;
  final DanceStyle style;

  const DanceStyleWidget({Key? key, required this.url, required this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DanceDetailScreen(),
                settings: RouteSettings(arguments: style)));
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: Row(
          children: [
            Image.network(
              url,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(style.name),
          ],
        ),
      ),
    );
  }
}
