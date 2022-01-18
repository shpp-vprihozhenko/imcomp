import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Наши контакты'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Связаться с нами можно по телефонам:', textScaleFactor: 1.3,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.call_outlined,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('0675220386', textScaleFactor: 1.2),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.call_outlined,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('0504886590', textScaleFactor: 1.2),
                ),
                Image.network('https://thumbs.dreamstime.com/b/viber-logo-icon-voronezh-russia-november-round-purple-color-164586200.jpg', width: 30,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.call_outlined,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('0504886591', textScaleFactor: 1.2),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.call_outlined,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Администрация: 0677276590', textScaleFactor: 1.2),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            const Text('Мы расположены по адресу:', textScaleFactor: 1.3),
            const Text('г. Кропиницкий\nул. Шевченко, 36', textScaleFactor: 1.2),
          ],
        ),
      ),
    );
  }
}
