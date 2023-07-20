import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  var child;
  MyButton({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Center(child: child),
    );
  }
}
