// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallpix/core/colors.dart';
import 'package:wallpix/core/dim.dart';

import '../CustomappBar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String image =
        "https://images.unsplash.com/photo-1682687981974-c5ef2111640c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1771&q=80";

    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              width: double.infinity,
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Image.network(
                    image,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.6),
                            blurRadius: 30.0,
                            spreadRadius: 30.0,
                            offset: Offset(
                              0,
                              120,
                            )),
                      ],
                    ),
                  ),
                  Positioned(bottom: 10, left: 10, child: Text("Abstract")),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return height5;
          },
          itemCount: 10),
    );
  }
}
