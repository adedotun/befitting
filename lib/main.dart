import 'package:flutter/material.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

void main() => runApp(MaterialApp

  (debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xFF339966),
      accentColor: Color(0xFF339966)
    ),
    home: MyHomePage()));

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  InAppWebViewController webView;
  DrawerController drawerController;
  String url = "https://befittinglife.com/mobile-login";

  @override
  void initState() {
    super.initState();

    }
  @override
  void dispose() {
    super.dispose();
    // TODO: implement dispose
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF339966)
        ),
        child: new Drawer(
          child: new ListView(
            children: <Widget>[
//            drawer header
              Container(
                height: 100.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/befitting.jpg"),
                    )
                  ),
                ),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0)
              ),

//            Drawer body
              InkWell(
                onTap: () {
                  setState(() {
                    webView.loadUrl(url:"https://befittinglife.com/profile");
                  });
                  Navigator.of(context).pop();
                },
                child: ListTile(
                    title: Text('MY PROFILE',style: TextStyle(color: Colors.white)),
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    webView.loadUrl(url:"https://befittinglife.com/manage-subscriptions");
                  });
                  Navigator.of(context).pop();
                },
                child: ListTile(
                    title: Text('MY SUBSCRIPTION',style: TextStyle(color: Colors.white)),
                    leading: Icon(
                      Icons.add,
                      color: Colors.black,
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    webView.loadUrl(url:"https://befittinglife.com/manage-tokens");
                  });
                  Navigator.of(context).pop();
                },
                child: ListTile(
                    title: Text('MANAGE TOKENS',style: TextStyle(color: Colors.white)),
                    leading: Icon(
                      Icons.aspect_ratio,
                      color: Colors.black,
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    webView.loadUrl(url:"https://befittinglife.com/manage-referrals");
                  });
                  Navigator.of(context).pop();
                },
                child: ListTile(
                    title: Text('REFERRALS',style: TextStyle(color: Colors.white)),
                    leading: Icon(
                      Icons.person_add,
                      color: Colors.black,
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    webView.loadUrl(url:"https://befittinglife.com/all-courses");
                  });
                  Navigator.of(context).pop();
                },
                child: ListTile(
                    title: Text('LIBRARY',style: TextStyle(color: Colors.white)),
                    leading: Icon(
                      Icons.book,
                      color: Colors.black,
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    webView.loadUrl(url:"https://befittinglife.com/account-settings");
                  });
                  Navigator.of(context).pop();
                },
                child: ListTile(
                    title: Text('ACCOUNT SETTINGS',style: TextStyle(color: Colors.white)),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.black,
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    webView.loadUrl(url:"https://befittinglife.com/support");
                  });
                  Navigator.of(context).pop();
                },
                child: ListTile(
                    title: Text('SUPPORT',style: TextStyle(color: Colors.white)),
                    leading: Icon(
                      Icons.help,
                      color: Colors.black,
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    webView.loadUrl(url:"https://befittinglife.com/logout");
                  });
                  Navigator.of(context).pop();
                },
                child: ListTile(
                    title: Text('LOGOUT',style: TextStyle(color: Colors.white)),
                    leading: Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                    )),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF339966),
        title: IconButton(
          icon: Image.asset("assets/befitting.jpg"),
          iconSize: 150,
        ),
      ),
    body: Container(
    child: Column(children: <Widget>[
    Expanded(
    child: InAppWebView(
    initialUrl: url,
    initialHeaders: {},
    initialOptions: InAppWebViewWidgetOptions(
                    inAppWebViewOptions: InAppWebViewOptions(
                        debuggingEnabled: true,
                    )
                  ),
      onWebViewCreated: (InAppWebViewController controller) {
      webView = controller;
      },
      onLoadStart: (InAppWebViewController controller, String url) {
      },
    )
    )
    ]
    )
    )
    );
  }
}
