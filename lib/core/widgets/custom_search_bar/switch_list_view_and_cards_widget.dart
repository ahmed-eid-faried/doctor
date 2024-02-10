// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/custom_search_bar/cubit/switch_list_view_and_cards_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SwitchListViewAndCardsWidget extends StatelessWidget {
//   const SwitchListViewAndCardsWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<SwitchListViewAndCardsCubit,
//         SwitchListViewAndCardsState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return IconButton(
//           onPressed: () {
//             // printf("======================outter===========================");
//             context.read<SwitchListViewAndCardsCubit>().switchFun();
//           },
//           icon: BlocBuilder<SwitchListViewAndCardsCubit,
//               SwitchListViewAndCardsState>(
//             builder: (context, state) {
//               return SvgPictureCustom(
//                   BlocProvider.of<SwitchListViewAndCardsCubit>(context)
//                           .cardState
//                       ? AppSvg.menu
//                       : AppSvg.cards,
//                   width: AppSize.s16.landscapeFontSp(),
//                   height: AppSize.s16.landscapeFontSp());
//             },
//           ),
//         );
//       },
//     );
//   }
// }
