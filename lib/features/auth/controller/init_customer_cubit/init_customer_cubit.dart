 
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
 

// part 'init_customer_state.dart';

// class InitCustomerCubit extends Cubit<InitCustomerState> {
//   final InitCustomerUsecase initCustomerUsecase;

//   InitCustomerCubit({required this.initCustomerUsecase})
//       : super(InitCustomerInitial());

//   static InitCustomerCubit get(context) => BlocProvider.of(context);

//   int defaultCountryId = 1;
//   int languageId = 1;
//   String defaultAddress = '';
//   String defaultGoogleAddress = '';
//   String defaultLatitude = '';
//   String defaultLongitude = '';

//   Future<void> initCustomerFun() async {
//     emit(InitCustomerLoadingState());
//     Either<Failure, InitCustomerEntity> response = await initCustomerUsecase(
//         InitiateCustomerParams(
//             defaultCountryId: defaultCountryId,
//             languageId: languageId,
//             defaultAddress: defaultAddress,
//             defaultGoogleAddress: defaultGoogleAddress,
//             defaultLatitude: defaultLatitude,
//             defaultLongitude: defaultLongitude));
//     emit(response
//         .fold((failure) => InitCustomerErrorState(message: failure.message),
//             (initCustomerEntity) {
//       return InitCustomerSuccessState(initCustomerEntity: initCustomerEntity);
//     }));
//   }
// }
