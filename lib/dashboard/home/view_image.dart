// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpix/core/dim.dart';

class ViewImageScreen extends StatelessWidget {
  ViewImageScreen({super.key});

  String image =
      "https://images.unsplash.com/photo-1693307418199-4af8f979e50d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1924&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            Image.asset(
              'assets/images/download.png',
              width: 40,
              height: 50,
            ),
            Icon(
              Icons.share,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.network(
            image,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Align(
              alignment: Alignment.topCenter,
              child: ListTile(
                  trailing: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Spider Man",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Moviews & Super Heros",
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                  leading: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
