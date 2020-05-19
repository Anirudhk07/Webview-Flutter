import 'package:flutter/material.dart';
import 'web_view_container.dart';

class Home extends StatelessWidget {
  static final links = ['https://google.com', 'https://google.com'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WebView'),
        ),
        key: Key('123'),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 10,),
              Container(
                  color: Colors.yellow[100],
                  height: 140,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                  child: Row(children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/pay.png",
                      width: 150,
                      height: 200,
                    ),
                    Column(children: <Widget>[
                      FlatButton(
                        color: Colors.yellow[100],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 30.0),
                        child: Text('Payment'),
                        onPressed: () => _handleURLButtonPress(context,
                            'https://paytm.com/credit-card-bill-payment'),
                      ),
                      IconButton(
                          icon: Icon(Icons.arrow_forward), onPressed: null),
                      SizedBox(
                        height: 5,
                      ),
                    ])
                  ])),
              Container(
                  color: Colors.green[100],
                  height: 140,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                  child: Row(children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/bbc.png",
                      width: 150,
                      height: 200,
                    ),
                    Column(children: <Widget>[
                      FlatButton(
                        color: Colors.green[100],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 30.0),
                        child: Text('News'),
                        onPressed: () => _handleURLButtonPress(
                            context, 'https://www.bbc.com/news'),
                      ),
                      IconButton(
                          icon: Icon(Icons.arrow_forward), onPressed: null),
                      SizedBox(
                        height: 5,
                      ),
                    ])
                  ])),
                   Container(
                  color: Colors.blue[100],
                  height: 140,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                  child: Row(children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/w.png",
                      width: 150,
                      
                    ),
                    Column(children: <Widget>[
                      FlatButton(
                        color: Colors.blue[100],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 30.0),
                        child: Text('Wikipedia'),
                        onPressed: () => _handleURLButtonPress(context,
                            'https://www.wikipedia.org/'),
                      ),
                      IconButton(
                          icon: Icon(Icons.arrow_forward), onPressed: null),
                      SizedBox(
                        height: 5,
                      ),
                    ])
                  ])),
                   Container(
                  color: Colors.pink[100],
                  height: 140,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                  child: Row(children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/yo.png",
                      width: 150,
                      height: 200,
                    ),
                    Column(children: <Widget>[
                      FlatButton(
                        color: Colors.pink[100],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 30.0),
                        child: Text('Youtube'),
                        onPressed: () => _handleURLButtonPress(context,
                            'https://www.youtube.com/'),
                      ),
                      IconButton(
                          icon: Icon(Icons.arrow_forward), onPressed: null),
                      SizedBox(
                        height: 5,
                      ),
                    ])
                  ])),
            ]))));
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
