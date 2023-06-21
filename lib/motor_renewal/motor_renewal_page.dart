import 'package:flutter/material.dart';
import 'package:motor_renewal/widgets/Button.dart';
import 'package:motor_renewal/widgets/TextFieldWidget.dart';

class MotorRenewalPage extends StatefulWidget {
  const MotorRenewalPage({super.key});

  @override
  State<MotorRenewalPage> createState() => _MotorRenewalPageState();
}

class _MotorRenewalPageState extends State<MotorRenewalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Container(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 6,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 15,
                      vertical: MediaQuery.of(context).size.height / 30),
                  padding: const EdgeInsets.all(20),
                  // foregroundDecoration: foregroundDecoration,
                  // decoration: BoxDecoration(
                  //     boxShadow: [kBoxshadow],
                  //     border: !isBorderEnabled!
                  //         ? const Border()
                  //         : Border.all(width: 1, color: bordorColor),
                  //     borderRadius: BorderRadius.circular(radius),
                  //     gradient: LinearGradient(
                  //         colors: [startColor, endColor],
                  //         begin: startAlignment,
                  //         end: endAlignment)),
                  child: const Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Complete your kyc verification using a govt. ID proof',
                        style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          fontSize: 35,
                          color: Colors.blue,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 60),
                        child: Text(
                          "Complete KYC",
                          style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.orange,
                              color: Colors.orange),
                        ),
                      )
                    ],
                  )),
            ),
            Container(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 15,
                    vertical: MediaQuery.of(context).size.height / 20),
                padding: const EdgeInsets.all(20),
                // foregroundDecoration: foregroundDecoration,
                // decoration: BoxDecoration(
                //     boxShadow: [kBoxshadow],
                //     border: !isBorderEnabled!
                //         ? const Border()
                //         : Border.all(width: 1, color: bordorColor),
                //     borderRadius: BorderRadius.circular(radius),
                //     gradient: LinearGradient(
                //         colors: [startColor, endColor],
                //         begin: startAlignment,
                //         end: endAlignment)),
                // child:const Column(
                //   children: [
                //      Row(children: [
                //       Text("Existing Policy details",
                //           style: TextStyle(
                //             fontFamily: 'Roboto-Regular',
                //             fontSize: 30,
                //             color: Colors.blue,
                //           )),

                //     ]),
                //   ],
                // )
                child: ExpansionTile(
                    trailing: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.orange,
                    ),
                    title: const Text(""),
                    leading: const Text('Existing policy details',
                        style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          fontSize: 30,
                          color: Colors.blue,
                        )),
                    tilePadding: EdgeInsets.all(2),
                    childrenPadding: EdgeInsets.all(2),
                    key: const Key('1'), //attention
                    initiallyExpanded: false,
                    children: <Widget>[
                      TextFieldWidget(
                          buttonName: "Product Name",
                          labelTextColor: Colors.blue,
                          onPressed: () {},
                          enabledBorderColor: Colors.blue,
                          focusedBorderColor: Colors.blue),
                      TextFieldWidget(
                          buttonName: "Make & Model",
                          labelTextColor: Colors.blue,
                          onPressed: () {},
                          enabledBorderColor: Colors.blue,
                          focusedBorderColor: Colors.blue),
                      TextFieldWidget(
                          buttonName: "Registration Number",
                          onPressed: () {},
                          labelTextColor: Colors.blue,
                          enabledBorderColor: Colors.blue,
                          focusedBorderColor: Colors.blue),
                      TextFieldWidget(
                          buttonName: "Depricated IDV",
                          onPressed: () {},
                          labelTextColor: Colors.blue,
                          enabledBorderColor: Colors.blue,
                          focusedBorderColor: Colors.blue),
                      TextFieldWidget(
                          buttonName: "Ex-Showroom price",
                          onPressed: () {},
                          labelTextColor: Colors.blue,
                          enabledBorderColor: Colors.blue,
                          focusedBorderColor: Colors.blue),
                      TextFieldWidget(
                          buttonName: "RTO",
                          onPressed: () {},
                          labelTextColor: Colors.blue,
                          enabledBorderColor: Colors.blue,
                          focusedBorderColor: Colors.blue),
                      TextFieldWidget(
                          buttonName: "Engine number",
                          onPressed: () {},
                          labelTextColor: Colors.blue,
                          enabledBorderColor: Colors.blue,
                          focusedBorderColor: Colors.blue),
                      TextFieldWidget(
                          buttonName: "Chassis number",
                          onPressed: () {},
                          labelTextColor: Colors.blue,
                          enabledBorderColor: Colors.blue,
                          focusedBorderColor: Colors.blue),
                      TextFieldWidget(
                          buttonName: "Year of manufacture",
                          onPressed: () {},
                          labelTextColor: Colors.blue,
                          enabledBorderColor: Colors.blue,
                          focusedBorderColor: Colors.blue),
                    ]),
              ),
            ),
            Container(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 6,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 15,
                      vertical: MediaQuery.of(context).size.height / 30),
                  padding: const EdgeInsets.all(20),
                  // foregroundDecoration: foregroundDecoration,
                  // decoration: BoxDecoration(
                  //     boxShadow: [kBoxshadow],
                  //     border: !isBorderEnabled!
                  //         ? const Border()
                  //         : Border.all(width: 1, color: bordorColor),
                  //     borderRadius: BorderRadius.circular(radius),
                  //     gradient: LinearGradient(
                  //         colors: [startColor, endColor],
                  //         begin: startAlignment,
                  //         end: endAlignment)),
                  child: const Text(
                    'Renewal type: Standalone Own Damage',
                    style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 35,
                      color: Colors.blue,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
