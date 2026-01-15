import 'package:flutter/material.dart';

Widget DiscountWidget(String bgImage) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: AspectRatio(
        aspectRatio: 16 / 9, // adjust according to image
        child: Image.asset(
          bgImage,
          fit: BoxFit.cover,   // slight crop but fills container nicely
          width: double.infinity,
        ),
      ),
    ),
  );
}
