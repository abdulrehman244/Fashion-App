import 'package:flutter/material.dart';

Widget customprofile(Widget PIcon, String title, Icon TrailingIcon) {
  return ListTile(
    leading: Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
      color: Colors.grey[200],
        borderRadius: BorderRadius.circular(7),
      ),
      child: PIcon,
    ),
    title: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
    trailing: TrailingIcon,
  );
}
