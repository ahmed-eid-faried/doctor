// import 'package:flutter/material.dart';
// import 'package:doctor/core/imports/export_path_packages.dart';
// import 'package:doctor/core/widgets/icon_button/icon_button.dart';
// import 'package:doctor/features/cart/presentation/controllers/cart_cubit.dart';
// import 'package:doctor/features/collections/presentation/controller/collections_cubit/collections_cubit.dart';
// import 'package:doctor/features/home/presentation/controllers/categories_cubit/categories_cubit.dart';
// import 'package:doctor/features/products/presentation/controllers/collection_products_cubit.dart';
// import 'package:doctor/features/profile/presentation/controllers/countries_cubit/countries_cubit.dart';

// import '../../../features/main_page/presentaion/controller/navigation_bar_cubit/navigation_bar_cubit.dart';

// class ButtonNavBarWidget extends StatefulWidget {
//   const ButtonNavBarWidget({
//     super.key,
//     required this.iconSvg,
//     required this.currentIndex,
//     required this.animate,
//     // required this.tickerProvider,
//   });
//   final int currentIndex;
//   final String iconSvg;
//   final bool animate;
//   // final TickerProvider tickerProvider;

//   @override
//   State<ButtonNavBarWidget> createState() => _ButtonNavBarWidgetState();
// }

// class _ButtonNavBarWidgetState extends State<ButtonNavBarWidget>
//     with SingleTickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     // NavigationBarCubit.get(context).initState(this);
//     return FlipDirection(
//       child: IconButtonCustom(
//           color: AppColor.white,
//           height: AppSize.s24.landscapeFontSp(),
//           width: AppSize.s24.landscapeFontSp(),
//           iconName: widget.iconSvg,
//           onPressed: () {
//             if (widget.currentIndex == 0) {
//               CollectionsCubit.get(context).getCollections();
//             } else if (widget.currentIndex == 2) {
//               CategoriesCubit.get(context).getCategories();
//               FlashSaleCubit.get(context).getFlashSaleItems();
//               CollectionProductsCubit.get(context).getSearchProducts();
//             } else if (widget.currentIndex == 3) {
//               CollectionProductsCubit.get(context).getSearchProducts();
//               CartCubit.get(context).getCartItems();
//             } else if (widget.currentIndex == 4) {
//               CountriesCubit.get(context).getCountries();
//             }
//             context
//                 .read<NavigationBarCubit>()
//                 .changeCurrentIndexOfPage(widget.currentIndex);
//           }),
//     );
//   }
// }
