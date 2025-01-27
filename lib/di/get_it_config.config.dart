// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../reactive_address/controller.dart' as _i177;
import '../reactive_address_gen/controller.dart' as _i435;

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
    gh.factory<_i435.ReactiveAddressGenController>(
        () => _i435.ReactiveAddressGenController());
    gh.lazySingleton<_i177.AddressReactiveController>(
        () => _i177.AddressReactiveController());
    return this;
  }
}
