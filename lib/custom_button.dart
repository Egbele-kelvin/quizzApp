import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final Color color;
  const CustomButton({
    Key key,@required this.text,@required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 80.0,
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20.0 ),),
    );
  }
}