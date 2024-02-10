import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

//************************************************// Params Body \\***************************************
class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class IdParams extends Equatable {
  final int id;

  const IdParams({required this.id});

  @override
  List<Object?> get props => [id];
}

class SubCategoryParams extends Equatable {
  final int id;
  final int collectionId;

  const SubCategoryParams({required this.id, required this.collectionId});

  @override
  List<Object?> get props => [id, collectionId];
}

//************************************************// AUTH Body \\***************************************

class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class ChangePasswordParams extends Equatable {
  final String oldPassword;
  final String password;
  final String confirmPassword;

  const ChangePasswordParams(
      {required this.oldPassword,
      required this.password,
      required this.confirmPassword});

  @override
  List<Object?> get props => [oldPassword, password, confirmPassword];
}

class OtpParams extends Equatable {
  final String otp;

  const OtpParams({required this.otp});

  @override
  List<Object?> get props => [otp];
}

//************************************************// Collection Products Body \\***************************************\\

class CollectionProductsParams extends Equatable {
  final int pageNumber;
  final int pageSize;
  final String? searchKey;

  const CollectionProductsParams(
      {required this.pageNumber, required this.pageSize, this.searchKey = ''});

  @override
  List<Object?> get props => [pageNumber, pageSize, searchKey];
}
//---------------------------------------------// Search Products Body \\-----------------------------------------\\

class SearchProductsParams extends Equatable {
  final List<int>? sizesId;
  final List<int>? colorsId;
  final List<int>? subCategoriesId;
  final List<int>? categoriesId;
  final List<int>? collectionId;
  final List<String>? variantId;
  final int? sortItemsCreteria;
  final double? fromPrice;
  final double? toPrice;

  final String? searchKey;
  final int pageNumber;
  final int pageSize;
  const SearchProductsParams(
      {this.subCategoriesId,
      this.categoriesId,
      this.collectionId,
      this.variantId,
      this.sortItemsCreteria,
      this.fromPrice,
      this.toPrice,
      this.sizesId,
      this.colorsId,
      required this.pageNumber,
      required this.pageSize,
      this.searchKey = ''});

  @override
  List<Object?> get props => [
        sizesId,
        colorsId,
        subCategoriesId,
        variantId,
        sortItemsCreteria,
        fromPrice,
        toPrice,
        searchKey,
      ];
}
