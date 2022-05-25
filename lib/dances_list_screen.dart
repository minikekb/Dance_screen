import 'package:flutter/material.dart';

class DancesListScreen extends StatelessWidget {
  const DancesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  "https://i.ytimg.com/vi/OrCUjqQYS3U/maxresdefault.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10,),
                Text("Bachata"),
              ],
            ),
            Text("Salsa"),
            Text("Kizomba"),
          ],
        ),
      ),
    );
  }
}
