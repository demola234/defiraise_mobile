// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class BottomNavigationController extends StatefulWidget {
//   const BottomNavigationController({Key? key}) : super(key: key);

//   @override
//   _BottomNavigationControllerState createState() => _BottomNavigationControllerState();
// }

// class _BottomNavigationControllerState extends State<BottomNavigationController> {
//   late PageController pageController;
//   int _page = 0;

//   void onPageChanged(int page) {
//     setState(() {
//       _page = page;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     pageController = PageController();
//   }

//   void navigationTapped(int page) {
//     pageController.jumpToPage(page);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PageView(
//           children: [
//             Container(),
//           ],
//           onPageChanged: onPageChanged,
//           controller: pageController,
//           physics: const NeverScrollableScrollPhysics(),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           elevation: 0,
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   SvgPicture.asset(ImagesAsset.home,
//                       height: 20,
//                       width: 20,
//                       allowDrawingOutsideViewBox: true,
//                       color: Colors.grey),
//                   YMargin(9.0),
//                 ],
//               ),
//               label: "",
//               tooltip: "Dashboard",
//               activeIcon: Column(
//                 children: [
//                   SvgPicture.asset(
//                     ImagesAsset.home,
//                     height: 20,
//                     width: 20,
//                     allowDrawingOutsideViewBox: true,
//                     color: !isDarkMode
//                         ? ProbitasColor.ProbitasSecondary
//                         : ProbitasColor.ProbitasAccent,
//                   ),
//                   YMargin(4.0),
//                   Container(
//                     height: 5.0,
//                     width: 5.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: !isDarkMode
//                           ? ProbitasColor.ProbitasSecondary
//                           : ProbitasColor.ProbitasAccent,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   SvgPicture.asset(ImagesAsset.post,
//                       height: 20,
//                       width: 20,
//                       allowDrawingOutsideViewBox: true,
//                       color: Colors.grey),
//                   YMargin(9.0),
//                 ],
//               ),
//               label: "",
//               tooltip: "Posts",
//               activeIcon: Column(
//                 children: [
//                   SvgPicture.asset(ImagesAsset.post,
//                       height: 20,
//                       width: 20,
//                       allowDrawingOutsideViewBox: true,
//                       color: !isDarkMode
//                           ? ProbitasColor.ProbitasSecondary
//                           : ProbitasColor.ProbitasAccent),
//                   YMargin(4.0),
//                   Container(
//                     height: 5.0,
//                     width: 5.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: !isDarkMode
//                           ? ProbitasColor.ProbitasSecondary
//                           : ProbitasColor.ProbitasAccent,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   SvgPicture.asset(
//                     ImagesAsset.resources,
//                     height: 20,
//                     width: 20,
//                     allowDrawingOutsideViewBox: true,
//                     color: Colors.grey,
//                   ),
//                   YMargin(9.0),
//                 ],
//               ),
//               label: "",
//               tooltip: "Tasks",
//               activeIcon: Column(
//                 children: [
//                   SvgPicture.asset(ImagesAsset.resources,
//                       height: 20,
//                       width: 20,
//                       allowDrawingOutsideViewBox: true,
//                       color: !isDarkMode
//                           ? ProbitasColor.ProbitasSecondary
//                           : ProbitasColor.ProbitasAccent),
//                   YMargin(4.0),
//                   Container(
//                     height: 5.0,
//                     width: 5.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: !isDarkMode
//                           ? ProbitasColor.ProbitasSecondary
//                           : ProbitasColor.ProbitasAccent,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   SvgPicture.asset(
//                     ImagesAsset.assignment,
//                     height: 20,
//                     width: 20,
//                     allowDrawingOutsideViewBox: true,
//                     color: Colors.grey,
//                   ),
//                   YMargin(9.0),
//                 ],
//               ),
//               label: "",
//               tooltip: "Resources",
//               activeIcon: Column(
//                 children: [
//                   SvgPicture.asset(ImagesAsset.assignment,
//                       height: 20,
//                       width: 20,
//                       allowDrawingOutsideViewBox: true,
//                       color: !isDarkMode
//                           ? ProbitasColor.ProbitasSecondary
//                           : ProbitasColor.ProbitasAccent),
//                   YMargin(4.0),
//                   Container(
//                     height: 5.0,
//                     width: 5.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: !isDarkMode
//                           ? ProbitasColor.ProbitasSecondary
//                           : ProbitasColor.ProbitasAccent,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   SvgPicture.asset(
//                     ImagesAsset.notifications,
//                     height: 20,
//                     width: 20,
//                     allowDrawingOutsideViewBox: true,
//                     color: Colors.grey,
//                   ),
//                   YMargin(9.0),
//                 ],
//               ),
//               label: "",
//               tooltip: "Notification",
//               activeIcon: Column(
//                 children: [
//                   SvgPicture.asset(ImagesAsset.notifications,
//                       height: 20,
//                       width: 20,
//                       allowDrawingOutsideViewBox: true,
//                       color: !isDarkMode
//                           ? ProbitasColor.ProbitasSecondary
//                           : ProbitasColor.ProbitasAccent),
//                   YMargin(4.0),
//                   Container(
//                     height: 5.0,
//                     width: 5.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: !isDarkMode
//                           ? ProbitasColor.ProbitasSecondary
//                           : ProbitasColor.ProbitasAccent,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//           selectedItemColor: !isDarkMode
//               ? ProbitasColor.ProbitasSecondary
//               : ProbitasColor.ProbitasAccent,
//           unselectedItemColor: Colors.grey,
//           selectedFontSize: 12,
//           unselectedFontSize: 12,
//           onTap: navigationTapped,
//           type: BottomNavigationBarType.fixed,
//           currentIndex: _page,
//           iconSize: 20,
//         ));
//   }
// }