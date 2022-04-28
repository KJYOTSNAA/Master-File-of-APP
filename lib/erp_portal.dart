import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ERP extends StatefulWidget {
  const ERP({Key? key}) : super(key: key);

  @override
  _ERPState createState() => _ERPState();
}

class _ERPState extends State<ERP> {
  late WebViewController controller;
  _goback()async{
    if(await controller.canGoBack())
      {
        await controller.goBack();
      }
  }

  _gofoeward()async{
    if(await controller.canGoForward())
    {
      await controller.goForward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('AJU Portals')),
        actions:[
          IconButton(icon:Icon(Icons.arrow_back),onPressed:_goback),
          IconButton(icon:Icon(Icons.arrow_forward),onPressed:_gofoeward),
        ],
      ),
      body: WebView(
        initialUrl: 'https://aju.mastersofterp.in/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webviewcontroller){
          controller=webviewcontroller;
        },
      ),
    );
  }
}
