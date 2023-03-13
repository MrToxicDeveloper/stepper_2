import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/stepper_provider.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  LogInP? proTrue;
  LogInP? proFalse;

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<LogInP>(context, listen: true);
    proFalse = Provider.of<LogInP>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Icon(Icons.arrow_back),
          title: Text("Edit Your Profile"),
        ),
        body: Stepper(
          currentStep: proTrue!.i,
          onStepTapped: (index) {
            proFalse!.jumpStep(index);
          },
          onStepCancel: () {
            proFalse!.backStep();
          },
          onStepContinue: () {
            proFalse!.nextStep();
          },
          steps: [
            Step(
              title: Text("Profile picture"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //     TextField(
                  //       decoration: InputDecoration(
                  //         hintText: "Full Name",
                  //       ),
                  //     ),
                  //     TextField(
                  //       decoration: InputDecoration(
                  //         hintText: "Email-ID",
                  //       ),
                  //     ),
                  //     TextField(
                  //       decoration: InputDecoration(
                  //         hintText: "Password*",
                  //       ),
                  //     ),
                  //     TextField(
                  //       decoration: InputDecoration(
                  //         hintText: "Confirm Password",
                  //       ),
                  //     )
                ],
              ),
            ),
            Step(
              title: Text("Name"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintText: "Password*",
                  //   ),
                  // ),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintText: "Confirm Password",
                  //   ),
                  // )
                ],
              ),
            ),
            Step(
              title: Text("Phone"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintText: "Password*",
                  //   ),
                  // ),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintText: "Confirm Password",
                  //   ),
                  // )
                ],
              ),
            ),
            Step(
              title: Text("Email"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
            Step(
              title: Text("DOB"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
            Step(
              title: Text("Gender"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
            Step(
              title: Text("Current Location"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
            Step(
              title: Text("Nationalities"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
            Step(
              title: Text("Religion"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
            Step(
              title: Text("Biography"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
            Step(
              title: Text("Done"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
