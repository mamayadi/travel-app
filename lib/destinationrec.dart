import 'package:flutter/material.dart';

class DestinationRec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Best Destination',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
        FlatButton(
          child: Text(
            'SEE ALL',
            style: TextStyle(fontSize: 12.0),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
