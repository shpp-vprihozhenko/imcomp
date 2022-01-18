import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkSchedule extends StatelessWidget {
  const WorkSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('График работы'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Наши рабочие дни - с понедельника по субботу', textScaleFactor: 1.25,),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Время работы в будние - с 9 до 18', textScaleFactor: 1.25),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Время работы в субботу - с 10 до 15', textScaleFactor: 1.25),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Интернет-магазин работает круглосуточно)', textScaleFactor: 1.25),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Будем рады видеть Вас в нашем магазине!', textScaleFactor: 1.25,
                style: TextStyle(color: Colors.blue),),
            ),
            SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
}
