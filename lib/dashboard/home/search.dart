// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpix/core/colors.dart';
import 'package:wallpix/core/dim.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final categoryList = [
    'Minimal',
    'Abstract',
    'Anime',
    'Super Hero',
    'Gradient'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              height10,
              OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              height20,
              SizedBox(
                height: 50,
                child: CupertinoSearchTextField(
                  prefixInsets: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 3),
                  suffixInsets: EdgeInsetsDirectional.fromSTEB(6, 0, 15, 3),
                  placeholder: "type here....",
                  onChanged: (value) {
                    if (value.isEmpty) {
                      return;
                    }
                  },
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: const Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              height40,
              Text(
                'Popular search',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 23),
              ),
              height20,
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  childAspectRatio: 1 / .4,
                  children: List.generate(
                      categoryList.length,
                      (index) => SizedBox(
                          width: 60,
                          height: 30,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                categoryList[index],
                                style:
                                    TextStyle(color: colorBlack, fontSize: 12),
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
