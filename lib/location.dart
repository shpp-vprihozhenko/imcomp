import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:imcomp/globals.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Наши координаты'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Наш магазин и склад расположен по адресу:', textScaleFactor: 1.25,),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('г. Кропивницкий, ул. Шевченко, 36', textScaleFactor: 1.25),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Мы на карте гугла:', textScaleFactor: 1.2),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: OutlinedButton(
                style: bStyle,
                child: Image.asset('images/im_on_map.jpg', width: 150,),
                onPressed: (){
                  js.context.callMethod('open', ["https://www.google.com/maps/place/Komp'yuter-Plyus,+Pp/@48.5109279,32.2681812,18z/data=!4m5!3m4!1s0x40d042aef31dd6a9:0x167821a738145c97!8m2!3d48.511029!4d32.269188"]);
                },
              ),
            ),
            const SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
