import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:smart_home_app/design.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: Theme.of(context)
            .appBarTheme
            .copyWith(brightness: Brightness.light),
      ),
      home: MySmartome(),
    );
  }
}

class MySmartome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).viewPadding.top);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Smart Home',
          style: TextStyle(
            color: Colors.blueAccent,
          ),
        ),
        backgroundColor: Color(0xFFE6EbF2),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE6EBF2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Design(
                  color: Color(0xFFE6EbF2),
                  blurLavel: 5.0,
                  offsetWhite: Offset(2, 2),
                  offsetBlack: Offset(-2, -2),
                  height: 55,
                  width: 55,
                  icon: Icons.wifi,
                  iconSize: 30.0,
                ),
                Design(
                  color: Color(0xFFE6EbF2),
                  blurLavel: 5.0,
                  offsetWhite: Offset(2, 2),
                  offsetBlack: Offset(-2, -2),
                  height: 55,
                  width: 55,
                  icon: Icons.phone_iphone,
                  iconSize: 30.0,
                ),
                Design(
                  color: Color(0xFFE6EbF2),
                  blurLavel: 5.0,
                  offsetWhite: Offset(2, 2),
                  offsetBlack: Offset(-2, -2),
                  height: 55,
                  width: 55,
                  icon: Icons.live_tv,
                  iconSize: 30.0,
                ),
                Design(
                  color: Color(0xFFE6EbF2),
                  blurLavel: 5.0,
                  offsetWhite: Offset(2, 2),
                  offsetBlack: Offset(-2, -2),
                  height: 55,
                  width: 55,
                  icon: Icons.watch,
                  iconSize: 30.0,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 250.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFFE6EbF2),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(-3, -3),
                    color: Colors.white.withOpacity(.7),
                  ),
                  BoxShadow(
                    blurRadius: 3.0,
                    offset: Offset(3, 3),
                    color: Colors.black.withOpacity(.15),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFE6EbF2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE6EbF2),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            offset: Offset(-2, -2),
                            color: Colors.black.withOpacity(.3),
                          ),
                          BoxShadow(
                            blurRadius: 2.0,
                            offset: Offset(2, 2),
                            color: Colors.white.withOpacity(.7),
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFDCE7F1),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2.0,
                                offset: Offset(-2, -2),
                                color: Colors.black.withOpacity(.3),
                              ),
                              BoxShadow(
                                blurRadius: 2.0,
                                offset: Offset(2, 2),
                                color: Colors.white.withOpacity(.7),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Temprature',
                              style: TextStyle(
                                color: Colors.black.withOpacity(.6),
                                fontSize: 20.0,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              '20',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.6),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 90.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color(0xFFE6EbF2),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    offset: Offset(-3, -3),
                    color: Colors.white.withOpacity(.7),
                  ),
                  BoxShadow(
                    blurRadius: 2.0,
                    offset: Offset(3, 3),
                    color: Colors.black.withOpacity(.15),
                  ),
                ],
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconList(
                      icon: Icon(
                        Icons.lightbulb_outline,
                        color: Colors.green,
                        size: 30.0,
                      ),
                    ),
                    IconList(
                      icon: Icon(
                        Icons.do_not_disturb,
                        color: Colors.red,
                        size: 30.0,
                      ),
                    ),
                    IconList(
                      icon: Icon(
                        Icons.laptop_mac,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ),
                    IconList(
                      icon: Icon(
                        Icons.card_travel,
                        color: Colors.orange,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconList extends StatelessWidget {
  final Icon icon;

  const IconList({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Color(0xFFE6EbF2),
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              offset: Offset(-3, -3),
              color: Colors.white.withOpacity(.7),
            ),
            BoxShadow(
              blurRadius: 5.0,
              offset: Offset(3, 3),
              color: Colors.black.withOpacity(.15),
            ),
          ],
        ),
        child: icon,
      ),
    );
  }
}
