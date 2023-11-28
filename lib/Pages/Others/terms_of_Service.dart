import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class TermsOfService extends StatelessWidget {
  const TermsOfService({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Terms Of Service"),
        ),
        body: Container(
          height: _height,
          width: _width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Terms and conditions of UGV Bus App\n",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: _height/50),
                  ),
                  Text(
                    "Thank you for choosing our UGV Bus the transportation app of university of global village. This is not an official app of the university. Team young coders developed this project as a PBL (project-based learning) project in the 5th semester of B.Sc. in computer science in Engineering at the University of Global Village.\nBefore using our app, please take a moment to review our terms and conditions:\n",
                    style: TextStyle(fontWeight: FontWeight.normal,),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "1.	Applicability and Acceptance of Terms",
                    style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "These terms and conditions apply to your use of the UGV Bus App, and any updates or modifications to the app that may be released from time to time. By downloading, installing, or using the app, you agree to be bound by these terms and conditions.\n",
                    style: TextStyle(fontWeight: FontWeight.normal),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "2.	Use of the App",
                    style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "The UGV Bus App is designed to provide information about the location, status, driver’s contact,  and schedule of your university bus. You may use the app to view this information and to receive notifications regarding your bus. You can visit your university websites and portals through the app.You agree not to use the UGV Bus App for any illegal or unauthorized purpose. You also agree not to modify, distribute, or reproduce any content or materials from the app without our prior written consent.\n",
                    style: TextStyle(fontWeight: FontWeight.normal),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "3.	Privacy Policy",
                    style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "The UGV Bus App respects your privacy and is committed to protecting your personal information. The personal information that we collect is used for providing and improving the services. We will not use or share your information with anyone except as described in this privacy policy. By using the UGV Bus App, you agree to the terms of our Privacy Policy.\n",
                    style: TextStyle(fontWeight: FontWeight.normal),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "4.	Intellectual Property Rights",
                    style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "The UGV Bus App and all content and materials on the app, including but not limited to text, images, graphics, software, and code, are the property of the UGV Bus App or its licensors. You may not modify, distribute, or reproduce any content or materials from the app without our prior written c Changes to the Terms and Conditions.\n",
                    style: TextStyle(fontWeight: FontWeight.normal),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "5.	Changes to the Terms and Conditions",
                    style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "We reserve the right to modify these terms and conditions at any time, without prior notice. Any changes to these terms and conditions will be posted on the UGV Bus App website or within the app itself. Your continued use of the app after any changes to these terms and conditions have been posted will constitute your acceptance of such changes.Md Aminul Islam,  Hridoy Shill,  Jerin Afroz, Afsana Akter, and  Aminur Rahman Rana developed this project as a PBL (project-based learning) project in the 5th semester of B.Sc. in computer science in Engineering at the University of Global Village. This application is free to use for the students of the University Of Global Village. This page is used to inform visitors regarding our policies regarding the collection, use, and disclosure of personal information if anyone wanted to use our service. If you choose to use our service, then you agree to the collection and use of information in relation to this policy.\n",
                    style: TextStyle(fontWeight: FontWeight.normal),textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
