// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_advice_challenge/data/repositories/productRepo.dart'
    as _i327;
import 'package:flutter_advice_challenge/domain/repositories/product_service.dart'
    as _i1037;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i327.ProductRepository>(() => _i327.ProductRepository());
    gh.factory<_i1037.ProductService>(
        () => _i1037.ProductService(gh<_i327.ProductRepository>()));
    return this;
  }
}
