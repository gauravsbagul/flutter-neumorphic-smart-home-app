import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  final String inputBoxString;

  const IconList({Key key, this.inputBoxString}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: EdgeInsets.only(right: 20, left: 20),
        alignment: Alignment.centerRight,
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Color(0xFFE6EbF2),
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              offset: Offset(3, 3),
              color: Colors.white.withOpacity(.7),
            ),
            BoxShadow(
              blurRadius: 2.0,
              offset: Offset(-3, -3),
              color: Colors.black.withOpacity(.15),
            ),
          ],
        ),
        child: Text(
          inputBoxString,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
