import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  MyTextButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    this.isCurved = false,
    this.isIconButton = false,
    this.shadowColor = Colors.transparent,
    this.labelTextColor = Colors.white,
    this.textSize = 16,
    this.boredrColor = Colors.orange,
    this.bgColor = Colors.orange,
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
  final Color? bgColor;
  final Color boredrColor;
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
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: boredrColor),
              borderRadius: BorderRadius.circular(isCurved! ? 30 : 12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isIconButton!) Expanded(child: icon!),
              Expanded(
                flex: 3,
                child: Center(
                  child: FittedBox(
                    child: Text(
                      buttonName,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
