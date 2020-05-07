import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neumorphic/neumorphic.dart';

void main() => runApp(MyApp());
Color _color = Color(0xFFf2f2f2);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: _color,
    ));

    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      appBar: NeuAppBar(
        title: Text(
          'Cloudify',
        ),
      ),

      body: Column(
        children: <Widget>[
          NeuText(
            '\t Free Space 32GB ',
            depth: 50,
            spread: 50,
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 10,
                ),
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(right: 16),
                  child: NeuButton(
                    child: Text('All'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 120,
                  height: 50,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: NeuButton(
                    child: Text('Folder'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 120,
                  height: 50,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: NeuButton(
                    child: Text('New Folder'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 120,
                  height: 50,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: NeuButton(
                    child: Text('Folder'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          NeuText('\t Shared Folders',
              depth: 50,
              spread: 50,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              )),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 180,
                  width: 90,
                ),
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(right: 16),
                  child: NeuButton(
                    child: Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/h.png'),
                          height: 120,
                          width: 120,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: NeuButton(
                    child: Text('Folder'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
