import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: Color(0xff483d8b),
        systemNavigationBarColor: Color(0xff483d8b),
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light),
  );
  runApp(
    MaterialApp(
      home: App(),
    ),
  );
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  initState() {
    super.initState();
    _openApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () async {
          await _openApp();
        },
        child: Center(
          child: Text(
            "Kanz ul Iman",
            style: TextStyle(
                fontSize: 30,
                color: Color(0xff483d8b),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  _openApp() async {
    await FlutterWebBrowser.openWebPage(
      url: "http://ihtishamarif-001-site1.ctempurl.com/Student/login",
      customTabsOptions: CustomTabsOptions(
        colorScheme: CustomTabsColorScheme.system,
        toolbarColor: Color(0xff483d8b),
        addDefaultShareMenuItem: true,
        instantAppsEnabled: true,
        showTitle: true,
        urlBarHidingEnabled: true,
      ),
    );
  }
}
