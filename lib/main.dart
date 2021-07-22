import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

 Widget elevatedButtonWithTextView(IconData icon, Function onTap, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      onPressed: () {print("History is tapped");},
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 10,
        shape: StadiumBorder(),
      ),
      child: Row(children: [
        SizedBox(
            height: 50,
            child: Icon(
              Icons.timer,
              color: Colors.orange,
              size: 30,
            )
        ),
        Text("History", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),)
      ],),
    ),
  );
 }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(child: Image.asset('assets/shake.jpg', fit: BoxFit.fill,),),
        Column(children: [
          Expanded(flex:1, child: Container()),
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.menu),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.grey,
                  shape: CircleBorder(),
                  elevation: 10,
                ),
              ),
            ),
            Expanded(child: (Container())),
            elevatedButtonWithTextView(Icons.camera, null, "History")
          ],),
          Expanded(flex:1, child: Container()),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("Pride Shake", style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "Just for Jane:berry frozen custard,"
                  "\nmango + passion fruit, plus 5% of"
                  "\nsales go to The Trevor Project.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                height: 2.0,
              ),
            ),
          ),
          Expanded(flex: 10,child: Container()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.food_bank, size: 40, color: Colors.green,),
                ),
                SizedBox(width: 4.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("Good afternoon,Mobbin", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("Welcome back, time to get shackin'", style: TextStyle(color: Colors.grey[800]),),
                  ),
                  ],),
              ]),
            ),
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Choose Order Type", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 1.0,
                          shape: StadiumBorder(),
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(Icons.timer, color: Colors.orange, size: 30,),
                          ),
                          Text("Pick-Up", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),)
                        ],),
                      ),
                    ),
                    SizedBox(width: 30,),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 1.0,
                          shape: StadiumBorder(),
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(Icons.timer, color: Colors.orange, size: 30,),
                          ),
                          Text("Delivery", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),)
                        ],),
                      ),
                    ),
                  ],
                ),

              ],),
          ),
        ]),
      ],),
    );
  }
}
