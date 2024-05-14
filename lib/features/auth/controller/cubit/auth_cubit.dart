 // import 'package:dartz/dartz.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
 
// import 'auth_states.dart';

// class AuthCubit extends Cubit<AuthStates> {
//   final LoginUsecase loginUsecase;

//   AuthCubit({required this.loginUsecase}) : super(AuthInitialState());

//   GlobalKey<FormState> formKey = GlobalKey();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   static AuthCubit get(context) => BlocProvider.of(context);

//   Future<void> loginFun() async {
//     emit(AuthLoadingState());
//     Either<Failure, AuthEntity> response = await loginUsecase(LoginParams(
//       email: emailController.text,
//       password: passwordController.text,
//     ));

//     emit(response.fold((failure) => AuthErrorState(message: failure.message),
//         (authEntity) => AuthSuccessState(authEntity: authEntity)));
//   }
// }
