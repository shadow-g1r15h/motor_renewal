import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    this.isCurved = false,
    this.isIconButton = false,
    this.shadowColor = Colors.transparent,
    this.labelTextColor = Colors.white,
    this.enabledBorderColor = Colors.white,
    this.focusedBorderColor = Colors.white,
    this.textSize = 16,
    this.icon = const Icon(Icons.add, color: Colors.white, size: 18),
    this.width,
    this.height,
  }) : super(key: key);
  final String buttonName;
  final VoidCallback onPressed;
  final bool? isCurved;
  final bool? isIconButton;
  final Color? shadowColor;
  final Color? labelTextColor;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final num? textSize;
  final Icon? icon;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: isCurved!
                ? []
                : [
                    BoxShadow(
                        offset: const Offset(0, 3),
                        blurRadius: 1.0,
                        color: shadowColor!)
                  ]),
        height: height ?? MediaQuery.of(context).size.height / 15,
        width: width ?? MediaQuery.of(context).size.width,
        child: TextFormField(
          decoration: InputDecoration(
            label: Text(buttonName),
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: labelTextColor,
              letterSpacing: -0.2,
              fontSize: 12,
              height: 0.8,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(
                color: enabledBorderColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: focusedBorderColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
