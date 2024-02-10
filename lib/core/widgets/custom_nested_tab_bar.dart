// import 'package:doctor/core/core/utils/constants/colors.dart';
// import 'package:doctor/core/core/utils/style_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/custom_scaffold.dart';

// class CustomNestedTabBar extends StatelessWidget {
//   const CustomNestedTabBar({
//     super.key,
//     required this.appBar,
//     required this.tabs,
//     required this.children,
//     this.initialIndex = 0,
//   });
//   final PreferredSizeWidget appBar;
//   final List<Widget> tabs;
//   final List<Widget> children;
//   final int initialIndex;
//   @override
//   Widget build(BuildContext context) {
//     return tabs.length == children.length
//         ? DefaultTabController(
//             initialIndex: initialIndex,
//             length: tabs.length,
//             child: CustomScaffold(
//               appBar: appBar,
//               body: NestedTabBar(
//                 tabs: tabs,
//                 children: children,
//               ),
//             ),
//           )
//         : const Text("tabs.length != children.length");
//   }
// }

// class NestedTabBar extends StatefulWidget {
//   const NestedTabBar({super.key, required this.tabs, required this.children});
//   final List<Widget> tabs;
//   final List<Widget> children;

//   @override
//   State<NestedTabBar> createState() => _NestedTabBarState();
// }

// class _NestedTabBarState extends State<NestedTabBar>
//     with TickerProviderStateMixin {
//   late final TabController _tabController;
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         TabBar.secondary(
//           isScrollable: true,
//           tabAlignment: TabAlignment.start,
//           indicatorColor: AppColor.black,
//           dividerColor: Colors.transparent,
//           labelStyle: AppFontStyle.black12w400smcp(),
//           unselectedLabelStyle: AppFontStyle.grey12w400smcp(),
//           overlayColor: const MaterialStatePropertyAll(
//               Color.fromARGB(255, 230, 230, 230)),
//           controller: _tabController,
//           tabs: widget.tabs,
//         ),
//         Expanded(
//           child: TabBarView(
//             controller: _tabController,
//             children: widget.children,
//           ),
//         ),
//       ],
//     );
//   }
// }
