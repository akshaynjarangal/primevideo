// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repositories/show_repo.dart' as _i3;
import '../../domain/usecases/show_usecase.dart' as _i4;
import '../../presentation/bloc/cast_details/cast_details_bloc.dart' as _i5;
import '../../presentation/bloc/show_details/show_details_bloc.dart' as _i6;
import '../../presentation/bloc/show_list/show_list_bloc.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ShowRepo>(() => _i3.ShowRepoImpl());
    gh.factory<_i4.ShowUseCase>(
        () => _i4.ShowUseCase(showRepository: gh<_i3.ShowRepo>()));
    gh.factory<_i5.CastDetailsBloc>(
        () => _i5.CastDetailsBloc(gh<_i4.ShowUseCase>()));
    gh.factory<_i6.ShowDetailsBloc>(
        () => _i6.ShowDetailsBloc(gh<_i4.ShowUseCase>()));
    gh.factory<_i7.ShowListBloc>(() => _i7.ShowListBloc(gh<_i4.ShowUseCase>()));
    return this;
  }
}
