// import 'package:doctor/core/core/utils/constants/svg.dart';
// import 'package:doctor/core/core/utils/values_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/icon_button/icon_button.dart';

// import '../core/utils/constants/colors.dart';

// class CustomSliverAppBar extends StatefulWidget {
//   const CustomSliverAppBar(
//       {super.key,
//       required this.sliverAppBar,
//       required this.actions,
//       required this.title,
//       required this.body,
//       this.flexibleSpaceWidget});
//   final Widget sliverAppBar;
//   final List<Widget> actions;
//   final Widget title;
//   final Widget body;
//   final Widget? flexibleSpaceWidget;
//   @override
//   State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
// }

// class _CustomSliverAppBarState extends State<CustomSliverAppBar> {
//   ScrollController? _scrollController;
//   bool lastStatus = true;
//   double height = 500;
//   void _scrollListener() {
//     if (_isShrink != lastStatus) {
//       setState(() {
//         lastStatus = _isShrink;
//       });
//     }
//   }

//   bool get _isShrink {
//     return _scrollController != null &&
//         _scrollController!.hasClients &&
//         _scrollController!.offset > (height - kToolbarHeight);
//   }

//   @override
//   void initState() {
//     super.initState();
//     _scrollController = ScrollController()..addListener(_scrollListener);
//   }

//   @override
//   void dispose() {
//     _scrollController?.removeListener(_scrollListener);
//     _scrollController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return NestedScrollView(
//       physics: const BouncingScrollPhysics(),
//       controller: _scrollController,
//       headerSliverBuilder: (context, innerBoxIsScrolled) {
//         return [
//           SliverAppBar(
//             centerTitle: true,
//             elevation: 0,
//             backgroundColor: AppColor.white,
//             pinned: true,
//             expandedHeight: 500,
//             leading: !_isShrink
//                 ? const SizedBox()
//                 : IconButtonCustom(
//                     isFlip: true,
//                     width: AppSize.s8,
//                     height: AppSize.s14,
//                     iconName: AppSvg.backIcon,
//                     color: AppColor.black,
//                     onPressed: () {
//                       Navigator.of(context).pop(true);
//                     },
//                   ),
//             flexibleSpace: FlexibleSpaceBar(
//                 collapseMode: CollapseMode.parallax,
//                 title: _isShrink ? widget.title : null,
//                 // centerTitle: true,
//                 background: widget.sliverAppBar),
//             actions: _isShrink ? widget.actions : null,
//           ),
//         ];
//       },
//       body: CustomScrollView(
//         scrollBehavior: const ScrollBehavior(),
//         physics: const BouncingScrollPhysics(),
//         slivers: [
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return widget.body;
//               },
//               childCount: 1,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
