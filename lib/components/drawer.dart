import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutradharmobileapp/Constants.dart';

Widget drawer() {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Image.asset(image.logo),
        ListTile(
          title: const Text('Home'),
          onTap: () {
          null;
          },
        ),
        ListTile(
          title: const Text('Categories'),
          onTap: () {
            // Navigate to another page when item is clicked
            null;
          },
        ),
        ListTile(
          title: Text('All Products'),
          onTap: () {

          },
        ),
        ListTile(
          title: const Text('Cart'),
          onTap: () {
            null;
          },
        ),
        ListTile(
          title: const Text('Dashboard'),
          onTap: () {
            null;
          },
        ),
      ],
    ),
  );
}
