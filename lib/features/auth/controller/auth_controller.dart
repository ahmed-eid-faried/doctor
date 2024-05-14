//  import 'package:dartz/dartz.dart';
// import 'package:doctor/core/core/imports/export_path.dart'; 

// class AuthController extends ChangeNotifier {
//   final LoginUsecase loginUsecase;

//   AuthController({required this.loginUsecase});

//   GlobalKey<FormState> formKey = GlobalKey();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   String errorMessage = '';
//   AuthEntity? authEntity;
//   bool isLoading = false;

//   Future<void> loginFun() async {
//     isLoading = true;
//     Either<Failure, AuthEntity> response = await loginUsecase(LoginParams(
//       email: emailController.text,
//       password: passwordController.text,
//     ));
//     response.fold((failure) {
//       isLoading = false;
//       errorMessage = failure.message;
//     }, (loginEntity) {
//       isLoading = false;
//       authEntity = loginEntity;
//     });
//     notifyListeners();
//   }
// }
