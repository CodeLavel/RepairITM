import 'package:flutter/material.dart';
import 'package:flutterITM/widgets/logo.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class FirstPage extends StatefulWidget {
  FirstPage({
    Key key,
  }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var indexpages = [
    "แจ้งซ่อม",
    "รายการแจ้งซ่อม",
    "ข้อมูลโซน",
    "สแกน QR Code",
  ];
  var images = [
    "assets/images/menu_icon/repair.png",
    "assets/images/menu_icon/list.png",
    "assets/images/menu_icon/house.png",
    "assets/images/menu_icon/qrcode.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Menu(),
      appBar: AppBar(
        centerTitle: true,
        title: const Logo(),
      ),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                await Navigator.pushNamed(context, 'homestack/repair');
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/repair.png'),
                      width: 80,
                    ),
                    // Icon(
                    //   Icons.notifications_active,
                    //   size: 60,
                    // ),
                    Text(
                      'แจ้งซ่อม',
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
                color: Colors.blue[400],
              ),
            ),
            GestureDetector(
              onTap: () async {
                await Navigator.pushNamed(context, 'homestack/listrepair');
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/list.png'),
                      width: 80,
                    ),
                    // Icon(
                    //   Icons.list_alt,
                    //   size: 60,
                    // ),
                    Text(
                      'รายการแจ้งซ่อม',
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
                color: Colors.blue[400],
              ),
            ),
            GestureDetector(
              onTap: () async {
                await Navigator.pushNamed(context, 'homestack/qrscan');
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/qrcode.png'),
                      width: 80,
                    ),
                    // Icon(
                    //   Icons.qr_code_scanner,
                    //   size: 60,
                    // ),
                    Text(
                      'สแกน QR Code',
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
                color: Colors.blue[400],
              ),
            ),
            // GestureDetector(
            //   onTap: () async {
            //     await Navigator.pushNamed(context, 'homestack/about');
            //   },
            //   child: Container(
            //     padding: const EdgeInsets.all(8),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: <Widget>[
            //         Text(
            //           'เกี่ยวกับ',
            //           style: TextStyle(fontSize: 24),
            //         )
            //       ],
            //     ),
            //     color: Colors.blue[400],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
