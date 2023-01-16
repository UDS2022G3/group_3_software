// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:group_3_software/Reminder.dart';
import 'package:group_3_software/components/CategoryCard.dart';
import 'package:group_3_software/components/ProductCard.dart';
import 'package:group_3_software/constants.dart';
import 'package:group_3_software/models/Product.dart';
// import 'package:medical_app/Reminder.dart';
// import 'package:medical_app/components/CategoryCard.dart';
// import 'package:medical_app/components/ProductCard.dart';
// import 'package:medical_app/constants.dart';
// import 'package:medical_app/models/Product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> products = [
    Product('Surgical Mask', "It is designed to prevent infections.",
        'assets/images/mask.png', 160),
    Product(
        'Black n95 Mask',
        "It is n95 mask designed to prevent infections in patients.",
        'assets/images/black_mask.png',
        250),
    Product('Eye Patch', "It is designed to prevent infections in eyes.",
        'assets/images/eyepatch.png', 300),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        backgroundColor: kPrimary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Transform.rotate(
            angle: pi / 2,
            child: Icon(
              // Feather.bar_chart_2,
              Icons.menu,
              color: kTextPrimary,
              size: 30,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              // Feather.search,
              Icons.search,
              color: kTextPrimary,
              size: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Hi! John',
              style: TextStyle(
                color: kTextPrimary,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Deliver to',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Row(
              children: [
                Text(
                  'Current location',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  // Feather.chevron_down,
                  Icons.arrow_drop_down,
                  color: kTextPrimary,
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: 40),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kSecondary,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  shadowColor: kPrimary
                ),
                // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 22),
                // color: kSecondary,
                // splashColor: kPrimary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      // Feather.camera,
                      Icons.camera_alt,
                      color: kTextPrimary,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Upload your prescription',
                      style: TextStyle(
                        color: kTextPrimary,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: kTextSecondary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 125,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    title: 'FirstAid',
                    // icon: MaterialCommunityIcons.medical_bag,
                    icon: Icons.medical_services,
                  ),
                  CategoryCard(
                    title: 'Medicines',
                    // icon: MaterialCommunityIcons.pill,
                    icon: Icons.mediation_rounded,
                  ),
                  CategoryCard(
                    title: 'HealthCare',
                    // icon: Feather.activity,
                    icon: Icons.accessibility_new_rounded,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Today's deals",
              style: TextStyle(
                color: kTextPrimary,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) =>
                    ProductCard(product: products[index]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kSecondary,
        splashColor: kPrimary,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Reminder(),
            ),
          );
        },
        child: Icon(
          Icons.alarm_add,
          color: kTextPrimary,
          size: 30,
        ),
      ),
    );
  }
}
