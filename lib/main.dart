import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'public_offer_agreement.dart';
import 'payments_delivery.dart';
import 'schedule.dart';
import 'location.dart';
import 'about.dart';
import 'contacts.dart';
import 'globals.dart';
import 'cart.dart';
import 'warranty_return.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Магазин "Компьютеры"',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Магазин "Компьютеры"'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List <String> groups = [];
  List <Map<String,dynamic>> items = [];
  List <Map<String,dynamic>> allItems = [];
  late String selCat;

  @override
  void initState() {
    super.initState();
    _fillGroups();
    _fillItems();
    selCat = groups[0];
    _fillNewItems();
    DateTime now = DateTime.now();
    cart.orderNumber = '${now.year}-${now.month}-${now.day}-${rng.nextInt(100)}';
  }

  _fillItems(){
    addNotebooks();
    addMonitors();
    addKeyboards();
    addMouses();
    addRouters();
    addNetCards();
    addCases();
    addIngres();
    addPSU();
    addPrinters();
    addUps();
  }

  addNotebooks(){
    allItems.add({
      'group': 'Ноутбуки',
      'name': 'Ноутбук HP 255 G8 Asteroid Silver (32P18EA)',
      'price': 18170,
      'link': 'https://v-comp.com.ua/img/20210512215106608.jpg',
      'desc': '15.6" FullHD (1920x1080) / AMD Athlon 3050U (2.3 - 3.2 ГГц) RAM 8 ГБ / SSD 256 ГБ / AMD Radeon Graphics / No ODD / Wi-Fi / Bluetooth / LAN / DOS / 1.74 kg / серый',
    });
    allItems.add({
      'group': 'Ноутбуки',
      'name': 'Ноутбук HP 255 G8 Dark Ash Silver (27K51EA)',
      'price': 28144,
      'link': 'https://img.moyo.ua/img/gallery/5053/22/1300514_middle.jpg',
      'desc': '15.6" FullHD (1920x1080) / AMD Ryzen 3-3250U (2.6 - 3.5 ГГц) RAM 8 ГБ / SSD 256 ГБ / AMD Radeon Graphics / No ODD / Wi-Fi / Bluetooth / LAN / DOS / 1.74 kg / темно-серый',
    });
    allItems.add({
      'group': 'Ноутбуки',
      'name': 'Ноутбук Lenovo ThinkBook 15 G2 ITL Mineral Grey (20VE00G4RA)',
      'price': 24530,
      'link': 'https://v-comp.com.ua/img/20211215211504870.jpg',
      'desc': '15.6" FullHD (1920 x 1080) IPS / Intel Core i3-1115G4 (3.0 - 4.1 ГГц) RAM 8 ГБ / SSD 256 ГБ / Intel Graphics HD / No ODD / Wi-Fi / Bluetooth / LAN / DOS / 1.7 kg / серый',
    });
    allItems.add({
      'group': 'Ноутбуки',
      'name': 'Ноутбук Vinga Iron S140 Grey (S140-P50464GWP)',
      'price': 14625,
      'link': 'https://v-comp.com.ua/img/20181218051314621.jpg',
      'desc': '15.6" FullHD (1920x1080) / AMD Athlon 3050U (2.3 - 3.2 ГГц) RAM 8 ГБ / SSD 256 ГБ / AMD Radeon Graphics / No ODD / Wi-Fi / Bluetooth / LAN / DOS / 1.74 kg / серый',
    });
    allItems.add({
      'group': 'Ноутбуки',
      'name': 'Ноутбук Acer Enduro N3 EN314-51W-59TK Black (NR.R0PEU.00C)',
      'price': 31870,
      'link': 'https://v-comp.com.ua/img/20210625152813858.jpg',
      'desc': '14" FullHD (1920x1080) / Intel Core i5-10210U (1.6 - 4.2 ГГц) RAM 8 ГБ / SSD 512 ГБ / Intel UHD Graphics / No ODD / Wi-Fi / Bluetooth / LAN / Endless OS / 1.98 kg / черный',
    });
    allItems.add({
      'group': 'Ноутбуки',
      'name': 'Ноутбук HP 470 G7 Asteroid Silver (8VU24EA)',
      'price': 37632,
      'link': 'https://v-comp.com.ua/img/20200502204248982.jpg',
      'desc': '15.6" FullHD (1920x1080) / AMD Athlon 3050U (2.3 - 3.2 ГГц) RAM 8 ГБ / SSD 256 ГБ / AMD Radeon Graphics / No ODD / Wi-Fi / Bluetooth / LAN / DOS / 1.74 kg / серый',
    });
  }

  addMonitors(){
    allItems.add({
      'group': 'Мониторы',
      'name': 'Монитор 18.5" Asus VS197DE, Black (90LMF1001T02201C)',
      'price': 3824,
      'link': 'https://hotline.ua/img/tx/121/12197635.jpg',
      'desc': 'Диагональ экрана	18.5", Разрешение	1366 x 768, Формат экрана	16:9',
    });
    allItems.add({
      'group': 'Мониторы',
      'name': 'Монитор 18.5" Philips 193V5LSB2/10, Black (193V5LSB2/10)',
      'price': 3755,
      'link': 'https://www.techinn.com/f/13745/137457858_2/philips-193v5lsb2-18.5-led-hd-monitor.jpg',
      'desc': 'Диагональ экрана	18.5", Разрешение	1366 x 768, Формат экрана	16:9',
    });
    allItems.add({
      'group': 'Мониторы',
      'name': 'Монитор 19.5" AOC E2070SWN, Black (E2070SWN)',
      'price': 4382,
      'link': 'https://i.can.ua/images/700x700/goods/823/823142.jpg',
      'desc': 'Диагональ экрана	19.5", Разрешение	1600 x 900, Формат экрана	16:9',
    });
    allItems.add({
      'group': 'Мониторы',
      'name': 'Монитор 21.5" AOC E2270Swn, Black (E2270SWN)',
      'price': 4354,
      'link': 'https://static.nix.ru/autocatalog/lcd_aoc/184522_2254_draft.jpg',
      'desc': 'Диагональ экрана	21.5", Разрешение	1920 x 1080, Формат экрана	16:9',
    });
    allItems.add({
      'group': 'Мониторы',
      'name': 'Монитор 21.5" Asus VP228DE, Black (90LM01K0-B04170)',
      'price': 4756,
      'link': 'https://hotline.ua/img/tx/129/1290179595.jpg',
      'desc': 'Диагональ экрана	21.5", Разрешение	1920 x 1080, Формат экрана	16:9',
    });
    allItems.add({
      'group': 'Мониторы',
      'name': 'Монитор 21.5" Philips 220V8L5/00, Black (220V8L5/00)',
      'price': 4420,
      'link': 'https://v-comp.com.ua/img/20211231205734324.jpg',
      'desc': 'Диагональ экрана	21.5", Разрешение	1920 x 1080, Формат экрана	16:9',
    });
  }

  addMouses(){
    allItems.add({
      'group': 'Мышки',
      'name': 'LogicFox LF-MS001 USB, Black',
      'price': 250,
      'link': 'https://v-comp.com.ua/img/20180510210146101.jpg',
      'desc': 'Интерфейс	USB, Разрешающая способность	800 dpi',
    });
    allItems.add({
      'group': 'Мышки',
      'name': 'LogicFox LF-MS004 USB, Black',
      'price': 250,
      'link': 'https://v-comp.com.ua/img/20180510210731350.jpg',
      'desc': 'Интерфейс	USB, Разрешающая способность	800 dpi',
    });
    allItems.add({
      'group': 'Мышки',
      'name': 'LogicFox LP-MS089 USB, Black',
      'price': 390,
      'link': 'https://neon.ua/images/items/big/39197.jpg',
      'desc': 'Интерфейс	USB, Разрешающая способность	1000 dpi, беспроводная мышь (радиоканал)',
    });
    allItems.add({
      'group': 'Мышки',
      'name': 'Pleomax MOC-140, Black/Silver',
      'price': 350,
      'link': 'https://neon.ua/images/items/big/43321.jpg',
      'desc': 'Интерфейс	USB, Разрешающая способность	1600 dpi',
    });
    allItems.add({
      'group': 'Мышки',
      'name': 'LogicFox LF-MS001 USB, Black',
      'price': 250,
      'link': 'https://v-comp.com.ua/img/20180510210146101.jpg',
      'desc': 'Интерфейс	USB, Разрешающая способность	800 dpi',
    });
    allItems.add({
      'group': 'Мышки',
      'name': 'Media-Tech MT1054, Red',
      'price': 272,
      'link': 'https://v-comp.com.ua/img/20180510214706984.jpg',
      'desc': 'Интерфейс	USB, Разрешающая способность	1600 dpi',
    });
  }

  addKeyboards(){
    allItems.add({
      'group': 'Клавиатуры',
      'name': 'Vinga KB110BK, Black',
      'price': 282,
      'link': 'https://content2.rozetka.com.ua/goods/images/big/19130840.jpg',
      'desc': 'Способ подключения 	Проводная, Тип клавиатуры	Стандартная, Разъем	USB',
    });
    allItems.add({
      'group': 'Клавиатуры',
      'name': 'Клавиатура Defender Element HB-520 UKR, Black (45529)',
      'price': 205,
      'link': 'https://v-comp.com.ua/img/20191010025557433.jpg',
      'desc': 'Способ подключения 	Проводная, Тип клавиатуры	Стандартная, Разъем	USB',
    });
    allItems.add({
      'group': 'Клавиатуры',
      'name': 'Клавиатура FrimeCom FC-836, USB, Black (FC-836-USB)',
      'price': 182,
      'link': 'https://v-comp.com.ua/img/20160820222037377.jpg',
      'desc': 'Способ подключения 	Проводная, Тип клавиатуры	Мультимедийная, Разъем	USB',
    });
    allItems.add({
      'group': 'Клавиатуры',
      'name': 'Клавиатура Gemix KB-140, Black (KB140BUSB)',
      'price': 205,
      'link': 'https://v-comp.com.ua/img/20210612195255760.jpg',
      'desc': 'Способ подключения 	Проводная, Тип клавиатуры	Стандартная, Разъем	USB',
    });
    allItems.add({
      'group': 'Клавиатуры',
      'name': 'Клавиатура Ergo K-210USB, Black (K-210USB)',
      'price': 259,
      'link': 'https://v-comp.com.ua/img/20210905220147301.jpg',
      'desc': 'Способ подключения 	Проводная, Тип клавиатуры	Мультимедийная, Разъем	USB',
    });
    allItems.add({
      'group': 'Клавиатуры',
      'name': 'Gembird KB-U-103-UA, USB, Black',
      'price': 350,
      'link': 'https://v-comp.com.ua/img/20141120012332499.jpg',
      'desc': 'Способ подключения 	Проводная, Тип клавиатуры	Стандартная, Разъем	USB',
    });
  }

  addRouters(){
    allItems.add({
      'group': 'Роутеры',
      'name': 'Маршрутизатор Wi-Fi AVM FRITZ Box 7360 A/CH N300 (FRITZ)',
      'price': 352,
      'link': 'https://v-comp.com.ua/img/20210725224857352.jpg',
      'desc': 'Тип маршрутизатора - беспроводной, Порты LAN - 4',
    });
    allItems.add({
      'group': 'Роутеры',
      'name': 'Маршрутизатор Mercusys MW301R (MW301R)',
      'price': 396,
      'link': 'https://content1.rozetka.com.ua/goods/images/big/12958062.jpg',
      'desc': 'Тип маршрутизатора - беспроводной, Порты LAN - 2',
    });
    allItems.add({
      'group': 'Роутеры',
      'name': 'Маршрутизатор Tenda N301 (Tenda N301)',
      'price': 470,
      'link': 'https://wintik.com.ua/image/cache/catalog/tovar/tenda/router/Tenda-N301-1000x1000.jpg',
      'desc': 'Тип маршрутизатора - беспроводной, Порты LAN - 4',
    });
    allItems.add({
      'group': 'Роутеры',
      'name': 'Маршрутизатор Mercusys MW305R_V2 (MW305R_V2)',
      'price': 425,
      'link': 'https://content2.rozetka.com.ua/goods/images/big/220133744.jpg',
      'desc': 'Тип маршрутизатора - беспроводной, Порты LAN - 4',
    });
  }

  addNetCards(){
    allItems.add({
      'group': 'Сетевые карты',
      'name': 'Адаптер PCI Dynamod NC100TX-DL (NC100TX-DL)',
      'price': 323,
      'link': 'https://v-comp.com.ua/img/20210727202138621.jpg',
      'desc': 'Интерфейс PCI-E Стандарт 10/100 Мбит/с',
    });
    allItems.add({
      'group': 'Сетевые карты',
      'name': 'Адаптер Wi-Fi MT7601 (MT7601)',
      'price': 185,
      'link': 'https://v-comp.com.ua/img/20201016200022544.jpg',
      'desc': 'Интерфейс USB, Стандарт WiFi n-150 Mbps',
    });
    allItems.add({
      'group': 'Сетевые карты',
      'name': 'Адаптер PCI Merlion 8139D (Merlion 8139D)',
      'price': 323,
      'link': 'https://v-comp.com.ua/img/20210727202605228.jpg',
      'desc': 'Интерфейс PCI-E Стандарт 10/100 Мбит/с',
    });
    allItems.add({
      'group': 'Сетевые карты',
      'name': 'Адаптер Wi-Fi LV-UW02-5DB USB (LV-UW02-5DB)',
      'price': 187,
      'link': 'https://v-comp.com.ua/img/20210727212147928.jpg',
      'desc': 'Интерфейс USB Стандарт WiFi n - 150 Mbps',
    });
    allItems.add({
      'group': 'Сетевые карты',
      'name': 'Адаптер Wi-Fi LV-UW02-2DB (LV-UW02-2DB)',
      'price': 337,
      'link': 'https://v-comp.com.ua/img/20210727212721575.jpg',
      'desc': 'Интерфейс :	USB Стандарт :	WiFi n - 150 Mbps',
    });
  }

  addCases(){
    allItems.add({
      'group': 'Корпуса',
      'name': 'Корпус GameMax ET-210-NP, Black (ET-210-NP)',
      'price': 840,
      'link': 'https://v-comp.com.ua/img/20210918210512889.jpg',
      'desc': 'Форм-фактор	ATX, micro-ATX, mini-ITX',
    });
    allItems.add({
      'group': 'Корпуса',
      'name': 'Корпус GameMax ET-205-NP Black (ET-205-NP)',
      'price': 850,
      'link': 'Корпус GameMax ET-205-NP Black (ET-205-NP)',
      'desc': 'Форм-фактор	ATX, micro-ATX, mini-ITX',
    });
    allItems.add({
      'group': 'Корпуса',
      'name': 'Корпус GameMax ET-209-NP, Black (ET-209-NP)',
      'price': 880,
      'link': 'Корпус GameMax ET-209-NP, Black (ET-209-NP)',
      'desc': 'Форм-фактор	ATX, micro-ATX, mini-ITX',
    });
    allItems.add({
      'group': 'Корпуса',
      'name': 'Корпус GameMax MT-521 Black/Blue (MT521-NP)',
      'price': 950,
      'link': 'https://v-comp.com.ua/img/20170202015554699.jpg',
      'desc': 'Форм-фактор	ATX, micro-ATX',
    });
    allItems.add({
      'group': 'Корпуса',
      'name': 'Корпус GameMax MT507-NP-U3, Black (MT507-NP-U3)',
      'price': 880,
      'link': 'https://v-comp.com.ua/img/20191024020001687.jpg',
      'desc': 'Форм-фактор	ATX',
    });
    allItems.add({
      'group': 'Корпуса',
      'name': 'Корпус GameMax MT524-NP-U3, Black (MT524-NP-U3)',
      'price': 860,
      'link': 'Корпус GameMax MT524-NP-U3, Black (MT524-NP-U3)',
      'desc': 'Форм-фактор	ATX, micro-ATX, mini-ITX',
    });

  }

  addIngres(){
    allItems.add({
      'group': 'Комплектующие для ПК',
      'name': 'Процессор AMD Pro A6 8570E, Tray (AD857BAHM23AB)',
      'price': 1416,
      'link': 'https://v-comp.com.ua/img/20211223181010255.jpg',
      'desc': 'Тип разъема	AM4 Количество ядер	2 Тактовая частота	3.0 ГГц',
    });
    allItems.add({
      'group': 'Комплектующие для ПК',
      'name': 'Процессор Intel Core i5-4460S, Tray (CM8064601561423)',
      'price': 1745,
      'link': 'https://v-comp.com.ua/img/20210706200801293.jpg',
      'desc': 'Тип разъема	LGA 1150 Количество ядер	4 Тактовая частота	2.9 ГГц',
    });
    allItems.add({
      'group': 'Комплектующие для ПК',
      'name': 'Видеокарта Afox GeForce GT610, 1Gb (AF610-2048D3L5)',
      'price': 1598,
      'link': 'https://v-comp.com.ua/img/20210914202437698.jpg',
      'desc': 'Видеочип	GT610 Объём памяти	2048 mb Тип памяти	GDDR3 Шина памяти	64 bit',
    });
    allItems.add({
      'group': 'Комплектующие для ПК',
      'name': 'Видеокарта Colorful GeForce GT 730, 2Gb (GT730K 2GD3-V)',
      'price': 1791,
      'link': 'https://v-comp.com.ua/img/20211218193120640.jpg',
      'desc': 'Видеочип	GeForce GT730 Объём памяти	2Gb Тип памяти	GDDR3 Шина памяти	64 bit',
    });
    allItems.add({
      'group': 'Комплектующие для ПК',
      'name': 'Оперативная память Dato DDR4 2400Mhz 4Gb (DT4G4DLDND24)',
      'price': 630,
      'link': 'https://v-comp.com.ua/img/20211221214622233.jpg',
      'desc': 'Классификация памяти	Для настольных ПК, Частота памяти	2400 МГц, Объем памяти	4Gb',
    });
    allItems.add({
      'group': 'Комплектующие для ПК',
      'name': 'Материнская плата Asus Prime H310M-R R2.0 (PRIME H310M-R R2.0)',
      'price': 1550,
      'link': 'https://v-comp.com.ua/img/20200625230446857.jpg',
      'desc': 'Разъем CPU	Socket 1151 Чипсет	Intel H310 Форм-фактор	micro ATX',
    });
    allItems.add({
      'group': 'Комплектующие для ПК',
      'name': 'Материнская плата ASRock H310CM-HDV (H310CM-HDV)',
      'price': 1330,
      'link': 'https://v-comp.com.ua/img/20190706010408793.jpg',
      'desc': 'Разъем CPU	Socket 1151 Чипсет	Intel H310 Форм-фактор	micro ATX',
    });
  }

  addPSU(){
    allItems.add({
      'group': 'Блоки питания',
      'name': 'Блок питания GTL 400W 80mm (GTL-400-80)',
      'price': 421,
      'link': 'https://v-comp.com.ua/img/20200523182526891.jpg',
      'desc': 'Мощность	400W, Охлаждение	8 см',
    });
    allItems.add({
      'group': 'Блоки питания',
      'name': 'Блок питания Frime FPO-400-12C, 400W, кабеля немодульные (FPO-400-12C)',
      'price': 480,
      'link': 'https://v-comp.com.ua/img/20211201185609354.jpg',
      'desc': 'Мощность	400W, Охлаждение	12 см',
    });
    allItems.add({
      'group': 'Блоки питания',
      'name': 'Блок питания Frime FPO-450-8C, 450W без кабеля питания OEM (FPO-450-8C_OEM)',
      'price': 511,
      'link': 'https://v-comp.com.ua/img/20210218215017979.jpg',
      'desc': 'Мощность	450W, Охлаждение	8 см',
    });
    allItems.add({
      'group': 'Блоки питания',
      'name': 'Блок питания 1stPlayer PS-450SI, 450W (PS-450SI)',
      'price': 480,
      'link': 'https://v-comp.com.ua/img/2021111922120950.jpg',
      'desc': 'Мощность	450W, Охлаждение	8 см',
    });
  }

  addPrinters(){
    allItems.add({
      'group': 'Принтеры',
      'name': 'Принтер A4 Pantum P3010D (P3010D)',
      'price': 5451,
      'link': 'https://v-comp.com.ua/img/20201028221534637.jpg',
      'desc': 'Технология печати	Лазерная, Тип печати	ч/б, Максимальный формат печати	А4',
    });
    allItems.add({
      'group': 'Принтеры',
      'name': 'Принтер Brother HL-L2300DR (HLL2300DR1)',
      'price': 5735,
      'link': 'https://v-comp.com.ua/img/20150127015318143.jpg',
      'desc': 'Технология печати	Лазерная, Тип печати	ч/б, Максимальный формат печати	А4',
    });
    allItems.add({
      'group': 'Принтеры',
      'name': 'Принтер HP Neverstop Laser 1000w c Wi-Fi (4RY23A)',
      'price': 6278,
      'link': 'https://v-comp.com.ua/img/20200515225816281.jpg',
      'desc': 'Технология печати	Лазерная, Тип печати	ч/б, Максимальный формат печати	А4',
    });
    allItems.add({
      'group': 'Принтеры',
      'name': 'МФУ Pantum M6500 (M6500)',
      'price': 5262,
      'link': 'https://v-comp.com.ua/img/20170423043954462.jpg',
      'desc': 'Технология печати	Лазерная, Тип печати	ч/б, Максимальный формат печати	А4',
    });
    allItems.add({
      'group': 'Принтеры',
      'name': 'МФУ HP DeskJet 2720 A4 with Wi-Fi (3XV18B)',
      'price': 2287,
      'link': 'https://v-comp.com.ua/img/20210621203941255.jpg',
      'desc': 'Технология печати	Струйная цветная, Максимальный формат печати	А4',
    });
    allItems.add({
      'group': 'Принтеры',
      'name': 'МФУ HP Smart Tank 500 (4SR29A)',
      'price': 6819,
      'link': 'https://v-comp.com.ua/img/20200314182618487.jpg',
      'desc': 'Технология печати	Струйная цветная, Максимальный формат печати	А4',
    });

  }

  addUps(){
    allItems.add({
      'group': 'ИБП и стабилизаторы',
      'name': 'Gemix GMX-500',
      'price': 913,
      'link': 'https://v-comp.com.ua/img/20141122172658315.jpg',
      'desc': 'Выходная мощность - 500 ВА, Количество розеток - 1',
    });
    allItems.add({
      'group': 'ИБП и стабилизаторы',
      'name': 'ИБП LogicPower LPM-700VA-P, 700VA (LP3172)',
      'price': 1300,
      'link': 'https://v-comp.com.ua/img/20200517233541500.jpg',
      'desc': 'Выходная мощность - 700 ВА, Количество розеток - 2',
    });
    allItems.add({
      'group': 'ИБП и стабилизаторы',
      'name': 'Ritar RTP500 300W Standby-L (RTP500L)',
      'price': 1311,
      'link': 'https://v-comp.com.ua/img/20160830163133615.jpg',
      'desc': 'Выходная мощность - 500 ВА, Количество розеток - 2',
    });
    allItems.add({
      'group': 'ИБП и стабилизаторы',
      'name': 'EnerGenie EG-AVR-D2000-01',
      'price': 1325,
      'link': 'https://v-comp.com.ua/img/20160323145441679.jpg',
      'desc': 'Выходная мощность - 2000 ВА, Количество розеток - 2',
    });
    allItems.add({
      'group': 'ИБП и стабилизаторы',
      'name': 'Powercom TCA-3000 Black',
      'price': 1375,
      'link': 'https://v-comp.com.ua/img/20140118004249746.jpg',
      'desc': 'Выходная мощность - 3000 ВА, Количество розеток - 1',
    });
    allItems.add({
      'group': 'ИБП и стабилизаторы',
      'name': 'ИБП Ritar RTP650L-UX-IEC Proxima-L, 650VA, Black (RTP650L-UX-IEC)',
      'price': 1462,
      'link': 'https://v-comp.com.ua/img/2021091622295171.jpg',
      'desc': 'Выходная мощность - 650 ВА, Количество розеток - 4',
    });

  }

  _fillGroups(){
    groups.add('Ноутбуки');
    groups.add('Мониторы');
    groups.add('Клавиатуры');
    groups.add('Мышки');
    groups.add('Роутеры');
    groups.add('Сетевые карты');
    groups.add('Корпуса');
    groups.add('Комплектующие для ПК');
    groups.add('Блоки питания');
    groups.add('Принтеры');
    groups.add('ИБП и стабилизаторы');
  }

  _fillNewItems(){
    items = [];
    for (var item in allItems) {
      if (item['group'] == selCat) {
        items.add(item);
      }
    }
    print('items $items');
  }

  List <Widget> itemsW(){
    List <Widget> result = [];
    int idx=0;
    for(var item in items) {
      idx++;
      result.add(
        Container(
          color: idx%2==0? Colors.white:Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    child: Image.network(item['link'], width: 200,)
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      color: idx%2==0? Colors.white:Colors.grey[200],
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(item['name'],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text('Цена: '+item['price'].toString()+' грн.',
                                    textAlign: TextAlign.center,
                                    textScaleFactor: 1.4,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Гарантия: 1 год, Наличие: Да', textScaleFactor: 1.2 , textAlign: TextAlign.center,),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(child: Text('Описание: '+item['desc'], textAlign: TextAlign.center,)),
                              ],
                            ),
                            const SizedBox(height: 6,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: OutlinedButton(
                                    style: bStyle,
                                    onPressed: (){_addToCart(item);},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.add_shopping_cart_outlined,
                                          ),
                                          Text('В корзину', textAlign: TextAlign.center,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      );
      result.add(const Divider());
    }
    return result;
  }

  _addToCart(item) async {
    print('add item $item');
    CartItem ci = CartItem();
    for (var el in cart.lines) {
      if (item['name'] == el.name) {
        ci = el;
        print('found');
        break;
      }
    }
    if (ci.name == '') {
      ci.name = item['name'];
      ci.q = 1;
      ci.price = item['price'];
      ci.sum = ci.q * ci.price;
      cart.lines.add(ci);
    } else {
      ci.q++;
      ci.sum = ci.q * ci.price;
    }
    cart.q = _recalcCart();
    setState(() {});
    await showAlertPage(context, 'Товар ${ci.name} добавлен в корзину');
  }

  _recalcCart(){
    int q = 0;
    for (var el in cart.lines) {
      int _q = el.q;
      q += _q;
    }
    return q;
  }

  _showCart() async {
    print('cart $cart');
    var result = await showDialog(
        context: context,
        builder: (context) {
          double w = MediaQuery.of(context).size.width * 0.75;
          double h = MediaQuery.of(context).size.height * 0.65;
          print('w $w h $h');
          return AlertDialog(
            content: SizedBox(
              width: w, height: h,
              child: const CartW(),
            ),
          );
        }
    );
    /*
    if (result == null) {
      return;
    }

     */
    cart.q = _recalcCart();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: buildCart(),
        title: Row(
          children: [
            Text(widget.title, textScaleFactor: 1.2,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.call_outlined,
                    ),
                  ),
                  Text("0675220386, 0504886590"),
                ],
              )
            ),
            Image.asset('images/visaMasterLogo.jpg', width: 120,),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Группа товаров:  ', textScaleFactor: 1.4,),
                DropdownButton<String>(
                  value: selCat,
                  icon: const Icon(Icons.arrow_downward, color: Colors.deepPurple, size: 16,),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selCat = newValue!;
                      _fillNewItems();
                    });
                  },
                  items: groups
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ...itemsW(),
              ]//,
            )
          ),
        ],
      ),
      floatingActionButton: buildCart(), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: Container(
        color: Colors.white60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(),
            Wrap(
              // mainAxisAlignment: MainAxisAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                TextButton(
                  child: const Text('О нас'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const About()),
                    );
                  },
                ),
                TextButton(
                  child: const Text('Контакты'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Contacts()),
                    );
                  },
                ),
                TextButton(
                  child: const Text('Как нас найти'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Location()),
                    );
                  },
                ),
                TextButton(
                  child: const Text('График работы'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WorkSchedule()),
                    );
                  },
                ),
                TextButton(
                  child: const Text('Оплата и доставка'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PaymentsDelivery()),
                    );
                  },
                ),
                TextButton(
                  child: const Text('Гарантия и возврат'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WarrantyReturn()),
                    );
                  },
                ),
                TextButton(
                  child: const Text('Користувацька угода'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PublicAgreement()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Stack buildCart() {
    return Stack(
      children: [
        FloatingActionButton(
          onPressed: _showCart,
          tooltip: 'В корзину',
          child: const Icon(
            Icons.local_grocery_store_outlined,
            size: 30,
          ),
        ),
        Positioned(
            bottom: 10, right: 3,
            child: Text(cart.q.toString(),
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.yellowAccent,
                  fontWeight: FontWeight.bold,
              ),
            )
        ),
      ]

    );
  }
}
