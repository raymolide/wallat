import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main(){
  runApp(MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: MyApp(),
      ),
      debugShowCheckedModeBanner: false,
      title: "Wallet",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      )
    )
  );

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text("WALLET"),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        leading:  IconButton(
          icon:Icon(Icons.arrow_back), 
        ),
        actions: <Widget>[
         Transform.rotate(
             angle: -45,
              child:  IconButton(
               icon:Icon(Icons.send),
             ),
            ),
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Tab(child: Column(
              children: <Widget>[
                Icon(Icons.remove_circle_outline),
                Text("Home",style: TextStyle(fontSize: 8),),
              ],
            )),
            Tab(child: Column(
              children: <Widget>[
                Icon(Icons.work),
                Text("Deals",style: TextStyle(fontSize: 8),),
              ],
            )),
            Tab(child: Column(
              children: <Widget>[
                Icon(Icons.account_balance),
                Text("Wallet",style: TextStyle(fontSize: 8),),
              ],
            )),
            Tab(child: Column(
              children: <Widget>[
                Icon(Icons.monetization_on),
                Text("Finance",style: TextStyle(fontSize: 8),),
              ],
            )),
            Tab(child: Column(
              children: <Widget>[
                Icon(Icons.network_cell),
                Text("History",style: TextStyle(fontSize: 8),),
              ],
            )),

          ],
        ),
      ),
      body: TabBarView(
         children: <Widget>[
           Column(
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.all(15),
                 child: Column(
                   children: <Widget>[
                     Row(
                       children: <Widget>[
                         Text("WALLET CASH",
                           textDirection: TextDirection.ltr,
                         ),
                       ],
                     ),
                     Row(
                       children: <Widget>[
                         Icon(Icons.attach_money,
                           textDirection: TextDirection.ltr,
                           size: 15,
                           color: Colors.orange,
                         ),
                         Expanded(
                             flex: 2,
                             child: Text("1250",style: TextStyle(fontSize: 30, color: Colors.orange),)
                         ),
                         Expanded(
                           child: Icon(Icons.refresh),
                         ),
                         Expanded(
                           child:  RaisedButton(
                             child: Text("TOP UP", style: TextStyle(fontSize: 10),),
                             color: Colors.blue,
                             textColor: Colors.white,
                           ),
                         ),
                       ],
                     ),
                     Row(
                       children: <Widget>[
                         Text("WALLET POINTS  "),

                         Text("0",style: TextStyle(color: Colors.orange)),
                       ],
                     ),
                     Card(
                       color: Colors.white,
                       shadowColor: Colors.black,
                       child: Column(
                         children: <Widget>[
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               Expanded(
                                   child:  Card(
                                     borderOnForeground: true,
                                     color: Colors.white,
                                     elevation: 10,
                                     child: Column(
                                       children: <Widget>[
                                         IconButton(icon:Icon(Icons.arrow_forward, color: Colors.deepPurple)),
                                         Text("Transfer",style: TextStyle(color: Colors.deepPurple),)
                                       ],
                                     ),
                                   )
                               ),
                               Expanded(
                                   child:  Card(
                                     borderOnForeground: true,
                                     color: Colors.white,
                                     elevation: 10,
                                     child: Column(
                                       children: <Widget>[
                                         IconButton(icon:Icon(Icons.filter_center_focus, color: Colors.deepPurple)),
                                         Text("Scan",style: TextStyle(color: Colors.deepPurple),)
                                       ],
                                     ),
                                   )
                               ),
                               Expanded(
                                   child: Card(
                                     borderOnForeground: true,
                                     color: Colors.white,
                                     elevation: 10,
                                     child: Column(
                                       children: <Widget>[
                                         IconButton(icon:Icon(Icons.person_outline, color: Colors.deepPurple)),
                                         Text("Profile",style: TextStyle(color: Colors.deepPurple),)
                                       ],
                                     ),
                                   )
                               )
                             ],
                           )
                         ],

                       ),
                     ),
                   ],
                 ),
               ),
               Expanded(
                 child: Container(
                   color: Colors.white,
                   child: Padding(
                     padding: EdgeInsets.all(2),
                     child: ListView(
                       children: <Widget>[
                         cartao(Icon(Icons.home,color: Colors.deepPurple,), "Home"),
                         cartao(Icon(Icons.train,color: Colors.deepPurple), "Transport"),
                         cartao(Icon(Icons.shopping_cart,color: Colors.deepPurple), "Shopping"),
                         cartao(Icon(Icons.home,color: Colors.deepPurple), "Home"),
                         cartao(Icon(Icons.train,color: Colors.deepPurple), "Transport"),
                         cartao(Icon(Icons.shopping_cart,color: Colors.deepPurple), "Shopping"),
                       ],
                     ),
                   ),
                 ),
               )
             ],
           ),
           Container(             ),
           Container(),
           Container(),
           Container(),
         ],
      ),
      extendBody: true,
    );
  }

  Widget card(){
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Card", textDirection: TextDirection.ltr,)
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Icon(Icons.image),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[Text("MOEDA", textDirection: TextDirection.ltr,),]),
                    Row(children: <Widget>[Text("chave", textDirection: TextDirection.ltr,),]),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget cartao(Icon icon, String label){
    return Card(
      elevation: 10,
      color: Colors.white,
      borderOnForeground: true,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        children: <Widget>[
          Align(
          alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 5,
              height: 74,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: new BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                ),
              )
            )
          ),
          Expanded(
            child: SizedBox(
              height: 60,
              child: icon,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text("$label", style: TextStyle(color: Colors.black54),),
          )
        ],
      ),
    );
  }

  Widget aba(){
    return Container(
          color: Colors.indigo,
          child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[

            Positioned(
                left: -130,
                top: -160,
                child: Transform.rotate(angle: -45,
                  child: Container(
                  decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(1000))
                  ),

              child: SizedBox(
                  width: 350,
                  height: 350,
                  child: Text(""),
                     ),
                    ),
                   ),
                  ),
            Positioned(
                  top: 50,
                  left: 20,
                  child: Text("CARD",style: TextStyle(color: Colors.white,fontSize: 30),),
                  ),
            Positioned(
                  child: ListView(
                  children: <Widget>[
                    card(),
                    card(),
                    card(),

                    ],
                   ),
                 )
              ],
             )
         );

  }
}
