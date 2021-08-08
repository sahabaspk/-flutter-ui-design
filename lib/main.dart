import 'package:flutter/material.dart';
import './buildlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: ListView(children: <Widget>[
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                  onPressed: () {}),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image:DecorationImage(image:AssetImage("asstes/14.jpg"),
                  fit:BoxFit.cover),
                    // color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(7))),
              )
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Good",
                  style: TextStyle(
                      fontFamily: 'Futur',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5BB842),
                      fontSize: 50),
                ),
                Text(
                  "Morning",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5BB842),
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Popular Food",
                  style: TextStyle(
                    fontFamily: 'montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                )
              ],
            )),
        SizedBox(height: 7),
        Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Buildlist(
                foodName: "Vegan Breakfast",
                price: "\$28",
                imgpath: "asstes/14.jpg",
              ),
              Buildlist(
                foodName: "Protein Salad",
                price: "\$26",
                imgpath: "asstes/3.jpg",
              ),
              Buildlist(
                foodName:"Fruits Salad", 
                price:"\$30", 
                imgpath:"asstes/9.jpg"),
                Buildlist(
                  foodName:"Chesse Crumpets ",
                   price:"\$35", 
                   imgpath:"asstes/10.jpg"),

              // _build('/images/abroad.jpg', 'Vegan Breakfast', '\$28'),
              // _build('/images/abroad.jpg', 'Protein Salad', '\$26'),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Best Food",
            style: TextStyle(
              fontFamily: 'montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Color(0xFFACBEA3)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("asstes/5.jpg"), fit: BoxFit.cover)),
            ))
      ]),
      bottomNavigationBar: Container(
        height:75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: Color(0xFF5AC035),
        ),
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.bookmark_border, color: Colors.white),
            Icon(Icons.search, color: Colors.white),
            Icon(Icons.shopping_basket, color: Colors.white),
            Icon(Icons.person_outline, color: Colors.white),
          ],
        ),
      ),

      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     // Column is also a layout widget. It takes a list of children and
      //     // arranges them vertically. By default, it sizes itself to fit its
      //     // children horizontally, and tries to be as tall as its parent.
      //     //
      //     // Invoke "debug painting" (press "p" in the console, choose the
      //     // "Toggle Debug Paint" action from the Flutter Inspector in Android
      //     // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
      //     // to see the wireframe for each widget.
      //     //
      //     // Column has various properties to control how it sizes itself and
      //     // how it positions its children. Here we use mainAxisAlignment to
      //     // center the children vertically; the main axis here is the vertical
      //     // axis because Columns are vertical (the cross axis would be
      //     // horizontal).
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
