// // ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

// import 'dart:ffi';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:wallpix/api/api.dart';
// import 'package:wallpix/core/dim.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:wallpix/dashboard/home/view_image.dart';
// import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

// import '../../model/photo_model.dart';

// class TabBarItemScreen extends StatefulWidget {
//   final gridCount;
//   final tabName;
//   int page;

//   TabBarItemScreen(
//       {super.key, required this.gridCount, this.tabName, required this.page});

//   @override
//   State<TabBarItemScreen> createState() => _TabBarItemScreenState();
// }

// class _TabBarItemScreenState extends State<TabBarItemScreen> {
//   ScrollController _scrollController = ScrollController();
//   int items_number = 0;

//   @override
//   void initState() {
//     items_number = widget.page;
//     callApi(items_number);
//     super.initState();
//   }

//   void callApi(items_number) {
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       await ApiClass.instance
//           .getProducts(widget.tabName, items_number.toString());
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     _scrollController.addListener(() {
//       if (_scrollController.position.maxScrollExtent ==
//           _scrollController.position.pixels) {
//         items_number += 1;
//         callApi(items_number);
//         print(items_number);
//       }
//     });

//     return ValueListenableBuilder(
//       valueListenable: ApiClass.instance.productNotifier,
//       builder: (context, List<PhotoModel> newProduct, _) {
//         print(newProduct);
//         return GridView.count(
//           controller: _scrollController,
//           crossAxisCount: widget.gridCount,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//           shrinkWrap: true,
//           childAspectRatio: 1 / 1.5,
//           children: List.generate(newProduct.length, (index) {
//             return GestureDetector(
//               onTap: () {
//                 pushNewScreen(
//                   context,
//                   screen: ViewImageScreen(),
//                   withNavBar: false, // OPTIONAL VALUE. True by default.
//                   pageTransitionAnimation: PageTransitionAnimation.cupertino,
//                 );
//               },
//               child: Container(
//                 clipBehavior: Clip.hardEdge,
//                 alignment: Alignment.center,
//                 child: Stack(
//                   children: [
//                     Image.network(
//                       width: double.infinity,
//                       height: double.infinity,
//                       newProduct[index].urls!.small.toString(),
//                       fit: BoxFit.fill,
//                     ),
//                     Positioned(
//                       top: 5,
//                       right: 5,
//                       child: Row(
//                         children: [
//                           Text(newProduct[index].likes.toString()),
//                           Icon(
//                             Icons.favorite,
//                             color: Colors.red,
//                           )
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 5,
//                       left: 5,
//                       right: 5,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Expanded(
//                             child: Text(
//                               newProduct[index].altDescription.toString(),
//                               style: TextStyle(
//                                 fontSize: 12,
//                                 fontStyle: FontStyle.normal,
//                                 fontWeight: FontWeight.normal,
//                               ),
//                               softWrap: true,
//                               maxLines: 3,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                           width10,
//                           Row(
//                             children: [
//                               Text(
//                                 "214",
//                                 style: TextStyle(
//                                     fontSize: 12,
//                                     fontStyle: FontStyle.normal,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               width5,
//                               Icon(
//                                 Icons.remove_red_eye,
//                                 color: Colors.white,
//                                 size: 18,
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: new BorderRadius.all(Radius.circular(10)),
//                 ),
//               ),
//             );
//           }),
//         );
//       },
//     );
//   }
// }
