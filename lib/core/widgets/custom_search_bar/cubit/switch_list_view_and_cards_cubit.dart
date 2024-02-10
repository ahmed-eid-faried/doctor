// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:equatable/equatable.dart';

// part 'switch_list_view_and_cards_state.dart';

// class SwitchListViewAndCardsCubit extends Cubit<SwitchListViewAndCardsState> {
//   SwitchListViewAndCardsCubit() : super(const IntialState());
//   bool cardState = true;

//   switchFun({bool reset = false}) {
//     // printf("======================inner===========================");
//     reset
//         ? emit(const ChangeState(state: true))
//         : {cardState = !cardState, emit(ChangeState(state: cardState))};
//   }
// }
