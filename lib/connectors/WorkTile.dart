import 'package:flutter/material.dart';

class WorkTile extends StatelessWidget {
  WorkTile({this.check,this.title,this.index,this.notice,this.longPress});
  final bool check;
  final String title;
  final int index;
  final Function notice;
  final Function longPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SwitchListTile(
        title: Text(title,style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w800,
            fontSize: 20,
            decoration: check?TextDecoration.lineThrough:TextDecoration.none
        ),
        ),
        value: check,
        activeColor: Colors.redAccent,
        inactiveTrackColor: Colors.orange,
        onChanged: notice,
        secondary: CircleAvatar(
          child: Text((index+1).toString()),
        ),
        subtitle: check?Text('Completed',style: TextStyle(
          color: Colors.blueGrey[600],
        ),
        ):Text('Pending',style: TextStyle(
          color: Colors.blueGrey[600],
        ),
        ),
      ),
      onLongPress: longPress,
    );
  }
}
