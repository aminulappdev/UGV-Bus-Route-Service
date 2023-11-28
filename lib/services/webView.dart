import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebviewScreen extends StatefulWidget {

   WebviewScreen({Key? key, required this.link}) : super(key: key);
  //WebviewScreen({Key? key}) : super(key: key);
  String link ;
  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/": (_) => new WebviewScaffold(               
                  url: widget.link,
                  appBar: new AppBar(
                    leading: TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Icon(Icons.arrow_back,color: Colors.white,),),
                    title: new Text("Ugv"),
                  ),
                ),
          },
        ),
      ),
    );
  }
}

// Import for Android features.
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:webview_flutter_android/webview_flutter_android.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return 
// Scaffold(
//         appBar: AppBar(
//           title: Text("TutorialKart - Flutter WebView"),
//         ),
//         body: Center(
//           child: WebView(
//             initialUrl: 'https://flutter.dev',
//             javascriptMode: JavascriptMode.unrestricted,
            
            
//           ),
//         )
//       );
//   }
// }
