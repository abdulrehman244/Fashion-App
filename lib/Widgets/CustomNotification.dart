import 'package:flutter/material.dart';

Widget CustomNotification(String img, String notifName, String msg) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(
        img,
      ),
    ),
    title: Text(
      notifName,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
    ),
    subtitle: Text(
      msg,
      style: TextStyle(fontSize: 20.0),
    ),
  );
}
