import 'dart:math';

import 'package:flutter/material.dart';
import 'globals.dart';
import 'pay_cart_now.dart';

class CartW extends StatefulWidget {
  const CartW({Key? key}) : super(key: key);

  @override
  _CartWState createState() => _CartWState();
}

class _CartWState extends State<CartW> {

  @override
  void initState() {
    super.initState();
  }

  _editThingRow(element){
    print('_editThingRow $element');
  }

  _delRow(element){
    print('_delRow $element');
    for (int idx=0; idx<cart.lines.length; idx++) {
      CartItem tr=cart.lines[idx];
      if (tr.name == element.name && tr.q == element.q) {
        setState(() {
          cart.lines.removeAt(idx);
        });
        break;
      }
    }
  }

  List <TableRow> otherTableRows(){
    List <TableRow> result = [];
    for (var element in cart.lines) {
      result.add(
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: (){
                    _editThingRow(element);
                  },
                  child: Text(element.name, textAlign: TextAlign.center,)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(element.q.toString(), textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(element.price.toString(), textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(element.sum.toString(), textAlign: TextAlign.center,),
            ),
            IconButton(
              icon: const Icon(Icons.highlight_remove),
              onPressed: (){
                _delRow(element);
              },
            )
          ],)
      );
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    int _total = countCartTotal();
    return Scaffold(
      appBar: AppBar(
        title: Text('Корзина на сумму $_total грн.'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Table(
                  border: TableBorder.all(color: Colors.blueAccent, width: 2),
                  children: [
                    const TableRow(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Товар', textAlign: TextAlign.center,),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Количество', textAlign: TextAlign.center,),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Цена', textAlign: TextAlign.center,),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Сумма', textAlign: TextAlign.center,),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.highlight_remove),
                          ),
                        ]
                    ),
                    ...otherTableRows(),
                  ],
                  columnWidths: const <int, TableColumnWidth> {
                    0: FlexColumnWidth(4),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(2),
                    3: FlexColumnWidth(2),
                    4: FlexColumnWidth(1),
                  },
                ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Wrap(
        alignment: WrapAlignment.spaceAround,
        children: [
          OutlinedButton(
            child: const Text('Сохранить заказ'),
            style: bStyle,
            onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => const PayCartNow(mode: 'save')),
              );
            },
          ),
          OutlinedButton(
            child: const Text('Оплатить сразу'),
            style: bStyle,
            onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => const PayCartNow(mode: 'pay')),
              );
            },
          ),
          OutlinedButton(
            child: const Text('Вернуться в каталог'),
            style: bStyle,
            onPressed: () async {
              Navigator.pop(context);
            },
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   heroTag: 'cOk',
      //   onPressed: () {
      //     //cart.customer.name = _controller.value.text;
      //     Navigator.pop(context);
      //   },
      //   child: const Text('OK'),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
