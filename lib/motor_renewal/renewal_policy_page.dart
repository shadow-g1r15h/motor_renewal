import 'package:flutter/material.dart';
import 'package:motor_renewal/motor_renewal/motor_renewal_page.dart';
import 'package:motor_renewal/widgets/Button.dart';
import 'package:motor_renewal/widgets/TextFieldWidget.dart';

class RenewalPolicyPage extends StatefulWidget {
  const RenewalPolicyPage({super.key});

  @override
  State<RenewalPolicyPage> createState() => _RenewalPolicyPageState();
}

class _RenewalPolicyPageState extends State<RenewalPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldWidget(
                  buttonName: "Policy Number MOTOR", onPressed: () {}),
              SizedBox(height: MediaQuery.of(context).size.height / 65),
              MyTextButton(
                buttonName: "Submit",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MotorRenewalPage()),
                  );
                },
                width: MediaQuery.of(context).size.width / 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
