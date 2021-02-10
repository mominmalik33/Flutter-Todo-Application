import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  MenuItems({this.title,this.iconData,this.backGround,this.tap});
  final String title;
  final Icon iconData;
  final Color backGround;
  final Function tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width/2.5,
        height: MediaQuery.of(context).size.width/2.5,
        decoration: BoxDecoration(
            color: backGround,
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          iconData,
            Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
          ],
        ),
      ),
      onTap: tap,
    );
  }
}
