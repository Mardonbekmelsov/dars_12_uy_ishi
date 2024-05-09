import 'package:flutter/material.dart';

movieContainer(String image) {
  return Card(
    clipBehavior: Clip.hardEdge,
    child: Image.asset(
      fit: BoxFit.cover,
      image,
      height: 150,
      width: 100,
    ),
  );
}
