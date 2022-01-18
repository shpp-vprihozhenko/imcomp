import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'globals.dart';
import 'package:http/http.dart' as http;

class PayCartNow extends StatefulWidget {
  final String mode;

  const PayCartNow({Key? key, required this.mode}) : super(key: key);

  @override
  _PayCartNowState createState() => _PayCartNowState();
}

class _PayCartNowState extends State<PayCartNow> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();
  final d64SignUrl = myServerBaseUrl+'/getEncodedDS';
  final saveUrl = myServerBaseUrl+'/saveCartOrder';
  final liqpayApiUrl = 'https://www.liqpay.ua/api/3/checkout?';
  String liqpayUrl = 'https://www.liqpay.ua/api/3/checkout?data=eyJ2ZXJzaW9uIjozLCJhY3Rpb24iOiJwYXkiLCJhbW91bnQiOiI1MCIsImN1cnJlbmN5IjoiVUFIIiwiZGVzY3JpcHRpb24iOiLQmtC+0L3QtdC60YLQvtGAIiwicHVibGljX2tleSI6Imk0MTM1MDQ5OTQwNSIsImxhbmd1YWdlIjoicnUifQ==&signature=OrycL4x05CkJICtVsnnS3yAXDHs=';
  String amount = '0',
      order_id = cart.orderNumber,
      descr='заказ';
  final baseData = '{"version":3,"action":"pay","amount":{{AMOUNT}},"currency":"UAH","description":"{{DESCRIPTION}}","public_key":"i15882574033","language":"ru","server_url":"http://62.109.10.134:6118/cb","result_url":"http://62.109.10.134:6118/result.html", "order_id":"{{ORDER_ID}}"}';

  @override
  void initState() {
    super.initState();
    _controller.text = cart.customer.name;
    _controller1.text = cart.customer.tf;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _saveCartOrder() async {
    String data = cart.toString();
    var url = Uri.parse(saveUrl+'?data='+data+'&order_id='+cart.orderNumber);
    var response = await http.get(url);
    print('got response ${response.body} statusCode ${response.statusCode}');
    return response;
  }

  _paySave() async {
    if (_controller.value.text == '') {
      await showAlertPage(context, 'Укажите как вас зовут.');
      return;
    }
    cart.customer.name = _controller.value.text;
    if (_controller1.value.text == '') {
      await showAlertPage(context, 'Укажите ваш телефон.');
      return;
    }
    cart.customer.tf = _controller1.value.text;
    await _saveCartOrder();
    if (widget.mode == 'save') {
      await showAlertPage(context, 'Заказ ${cart.orderNumber} сохранён.');
      return;
    }
    liqpayUrl = await prepareLiqpayUrl();
    print('got liqpayUrl $liqpayUrl');
    if (liqpayUrl == '') {
      await showAlertPage(context, 'Ошибка. Не удалось получить ссылку на сервис оплаты.');
      return;
    }
    js.context.callMethod('open', [liqpayUrl]);
  }

  prepareLiqpayUrl() async {
    amount = countCartTotal().toString();
    String data = baseData.replaceAll('{{AMOUNT}}', amount)
        .replaceAll('{{ORDER_ID}}', order_id)
        .replaceAll('{{DESCRIPTION}}', descr+'-'+order_id);
    var url = Uri.parse(d64SignUrl+'?data='+data);
    var response = await http.get(url);
    if (response.statusCode != 200) {
      await showAlertPage(context, "Увы! Нет связи с сервером. Попробуйте позже ещё раз.");
      return '';
    }
    print('response.body ${response.body}');
    String _liqpayUrl = '';
    try {
      var respObj = jsonDecode(response.body);
      _liqpayUrl = liqpayApiUrl+'data='+respObj['d64']+'&signature='+respObj['sign'];
    } catch(e) {
      print('got err on decode $e');
    }
    return _liqpayUrl;
  }

  @override
  Widget build(BuildContext context) {
    String _header = widget.mode=='pay'? 'Оплата заказа':'Сохранить заказ';
    return Scaffold(
      appBar: AppBar(title: Text(_header),),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text('Заказ № ${cart.orderNumber}', textScaleFactor: 1.3,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Пожалуйста, уточните ваши контактные данные:'),
            ),
            Row(
              children: [
                const Text('Фамилия, имя: '),
                Expanded(
                  child: TextField(
                    controller: _controller,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text('Телефон: '),
                Expanded(
                  child: TextField(
                    controller: _controller1,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Сумма к оплате: ${countCartTotal()}'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: OutlinedButton(
                child: Text(widget.mode=='pay'? 'Оплатить!':'Сохранить'),
                style: bStyle,
                onPressed: _paySave,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
